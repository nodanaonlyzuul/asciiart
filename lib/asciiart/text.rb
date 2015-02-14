module AsciiRenderer
  class Text
    def initialize(img)
      @img = img
      @quantum_calc  = Magick::QuantumRange / Magick::QuantumPixel.to_i
    end

    def to_ascii_art(options = {})
      width       = options[:width]
      scale       = (width.to_f / @img.columns)
      height      = ((@img.rows * scale) / 2).to_i
      
      img           = @img.resize(width, height)
      @colored_img  = img.dup if options[:color]
      img           = img.quantize(image_chars.length, Magick::GRAYColorspace).normalize

      border = "+#{'-' * width}+\n"
      output = border.dup

      img.view(0, 0, width, height) do |view|
        height.times do |i|
          output << '|'
          width.times { |j| output << pixel_to_char(view,j: j , i: i, color: options[:color] ) }
          output << "|\n"
        end
      end
      output + border
    end
    
    def pixel_to_char(view, args = {})
      pixel = view[args[:i]][args[:j]]
      character = image_chars[pixel.red/@quantum_calc]

      if args[:color]
        pix       = @colored_img.pixel_color(args[:j],args[:i])
        character = character.color(unified_rgb_value(pix.red), unified_rgb_value(pix.green), unified_rgb_value(pix.blue))
      end
      character
    end

    def image_chars
      @image_chars ||= " .~:+=o*x^%\#@$WQ".chars.to_a
    end

    private
    def unified_rgb_value(number)
      if defined?(Magick::QuantumDepth)
        return (Magick::QuantumDepth == 16) ? (number / 256) : number
      else
        return (Magick::QuantumRange == 65535) ? (number / 256) : number
      end
    end

  end
end