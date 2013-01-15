require "mona/version"
require 'RMagick'

class Mona

  attr_accessor :file
  attr_writer   :image_chars

  def initialize(path_to_file)
    @file = File.new(path_to_file, "r")
  end

  def to_ascii_art

    img = Magick::Image.read(file).first

    new_width   = 100
    scale       = (new_width.to_f / img.columns)
    new_height  = ((img.rows * scale) / 2).to_i

    img.resize!(new_width, new_height)

    img = img.quantize(image_chars.length, Magick::GRAYColorspace)
    img = img.normalize

    quantum_calc = Magick::QuantumRange / Magick::QuantumPixel.to_i

    border = '+' + ('-' * new_width) + '+'
    puts border

    img.view(0, 0, new_width, new_height) do |view|
      new_height.times do |i|
      putc '|'
      new_width.times { |j| putc image_chars[view[i][j].red/quantum_calc] }
      puts '|'
    end
    end
    puts border
  end

  def image_chars
    @image_chars ||= [" ", ".", "~", ":", "+", "=", "o", "*", "x", "^", "%", "#", "@", "$", "M", "W"]
  end

end
