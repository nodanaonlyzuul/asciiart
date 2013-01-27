require "asciiart/version"
require 'RMagick'
require 'uri'
require 'open-uri'
require 'rainbow'

class AsciiArt

  attr_writer   :image_chars

  def initialize(path_to_file)
    # open-uri open will fallback to IO open
    open(path_to_file) { |file| @data = file.read }
    self
  end

  def to_ascii_art(options = {})
    options = { width: 100, color: false }.merge(options)

    img = Magick::Image.from_blob(@data).first

    width       = options[:width]
    scale       = (width.to_f / img.columns)
    height      = ((img.rows * scale) / 2).to_i
    colorspace  = (options[:color]) ? Magick::RGBColorspace : Magick::GRAYColorspace


    img.resize!(width, height)
    color_image   = img.dup if options[:color]
    img           = img.quantize(image_chars.length, colorspace).normalize
    quantum_calc  = Magick::QuantumRange / Magick::QuantumPixel.to_i

    border = "+#{'-' * width}+\n"
    output = border.dup

    img.view(0, 0, width, height) do |view|
      height.times do |i|
        output << '|'
        width.times do |j|

          charecter = image_chars[view[i][j].red/quantum_calc]

          if options[:color]
            pix       = color_image.pixel_color(j,i)
            charecter = charecter.color(pix.red/256, pix.green/256, pix.blue/256)
          end

          output << charecter
        end
        output << "|\n"
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
end

