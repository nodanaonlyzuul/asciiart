require "asciiart/version"
require 'rmagick'
require 'uri'
require 'open-uri'
require 'rainbow'
require 'rainbow/ext/string'

class AsciiArt

  attr_writer   :image_chars

  def initialize(path_to_file)
    # open-uri open will fallback to IO open
    open(path_to_file) { |file| @data = file.read }
    self
  end

  def to_ascii_art(options = {})
    options = { width: 100, color: false, format: "text" }.merge(options)

    img = Magick::Image.from_blob(@data).first

    width       = options[:width]
    scale       = (width.to_f / img.columns)
    height      = ((img.rows * scale) / 2).to_i

    img.resize!(width, height)
    color_image   = img.dup if options[:color]
    img           = img.quantize(image_chars.length, Magick::GRAYColorspace).normalize
    quantum_calc  = Magick::QuantumRange / Magick::QuantumPixel.to_i
    image_chars.map! {|char| char == " " ? "&nbsp;" : char } if options[:format] == "html"

    border = "+#{'-' * width}+#{line_break(options[:format])}"
    border = html_char(border) if options[:format] == "html"

    output = border.dup

    img.view(0, 0, width, height) do |view|
      height.times do |i|
        output << '|'
        width.times do |j|

          character = image_chars[view[i][j].red/quantum_calc]

          if options[:format] == "html"
            if (options[:color])

              pix = color_image.pixel_color(j,i)
              color_string = "color: #{pix.to_color( Magick::AllCompliance,false,8, true)};"
            else
              color_string = ""
            end
            character = html_char(character, color_string)
          else
            # text-format
            if options[:color]
              pix       = color_image.pixel_color(j,i)
              character = character.color(unified_rgb_value(pix.red), unified_rgb_value(pix.green), unified_rgb_value(pix.blue))
            end
          end

          output << character
        end

        output << "|#{line_break(options[:format])}"
      end
    end

    output + border
  end

  def image_chars
    @image_chars ||= ' .~:+=o*x^%#@$MW'.chars.to_a
  end

  def inspect
    "#<#{self.class.to_s}>"
  end

private

  def line_break(format)
    (format == "text") ? "\n" : "<br/>"
  end

  def unified_rgb_value(number)
    if defined?(Magick::QuantumDepth)
      return (Magick::QuantumDepth == 16) ? (number / 256) : number
    else
      return (Magick::QuantumRange == 65535) ? (number / 256) : number
    end
  end

  def html_char(char, additional_style = "")
    "<span style=\"font-family: 'Lucida Console', Monaco, monospace; #{additional_style}\">#{char}</span>"
  end
end

