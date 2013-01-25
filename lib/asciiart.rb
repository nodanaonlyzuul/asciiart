require "asciiart/version"
require 'RMagick'
require 'uri'
require 'open-uri'

class AsciiArt

  attr_writer   :image_chars

  def initialize(path_to_file)
    # open-uri open will fallback to IO open
    open(path_to_file) { |file| @data = file.read }
    self
  end

  def to_ascii_art(options = {})
    options = { width: 100 }.merge(options)

    img = Magick::Image.from_blob(@data).first

    width  = options[:width]
    scale  = (width.to_f / img.columns)
    height = ((img.rows * scale) / 2).to_i

    img.resize!(width, height)

    img = img.quantize(image_chars.length, Magick::GRAYColorspace)
    img = img.normalize

    quantum_calc = Magick::QuantumRange / Magick::QuantumPixel.to_i

    border = "+#{'-' * width}+\n"
    output = border.dup

    img.view(0, 0, width, height) do |view|
      height.times do |i|
        output << '|'
        width.times { |j| output << image_chars[view[i][j].red/quantum_calc] }
        output << "|\n"
      end
    end

    output + border
  end

  def image_chars
    @image_chars ||= ' .~:+=o*x^%#@$MW'.chars.to_a
  end
end

