module AsciiRenderer
  class Html
    def initialize(img)
      @img = img
      @quantum_calc  = Magick::QuantumRange / Magick::QuantumPixel.to_i
    end

    def to_ascii_art(options = {})
      width       = options[:width]
      scale       = (width.to_f / @img.columns)
      height      = ((@img.rows * scale) / 2).to_i
      
      img           = @img.resize(width, height)
      @color_img    = img.dup if options[:color]
      img           = img.quantize(image_chars.length, Magick::GRAYColorspace).normalize
      border = "+#{'-' * width}+<br/>"
      border = html_char(border)

      output = border.dup

      img.view(0, 0, width, height) do |view|
        height.times do |i|
          output << '|'
          width.times { |j| output << pixel_to_char(view, j: j, i: i, color: options[:color]) }
          output << "|<br/>"
        end
      end
      output + border
    end
    
    
    def pixel_to_char(view, args = {})
      pixel = view[args[:i]][args[:j]]
      character = image_chars[pixel.red/@quantum_calc]

      if (args[:color])

        pix = @color_img.pixel_color(args[:j],args[:i])
        color_string = "color: #{pix.to_color( Magick::AllCompliance,false,8, true)};"
      else
        color_string = ""
      end

      html_char(character, color_string)
    end
    
    def image_chars
      @image_chars ||= " .~:+=o*x^%\#@$WQ".chars.to_a.map{ |char| char == " " ? "&nbsp" : char}
    end

    private
    def html_char(char, additional_style = "")
      "<span style=\"font-family: 'Lucida Console', Monaco, monospace; #{additional_style}\">#{char}</span>"
    end
  end
end