require "mona/version"
require 'RMagick'

class Mona

  CHARS     =  [" ", ".", "~", ":", "+", "=", "o", "*", "x", "^", "%", "#", "@", "$", "M", "W"]
  FONT_ROWS = 8
  FONT_COLS = 4

  attr_accessor :file

  def initialize(path_to_file)
    @file = File.new(path_to_file, "r")
  end

  def to_ascii_art

    img = Magick::Image.read(file).first
    img.resize_to_fit!('728')

    # Compute the image size in ASCII "pixels" and resize the image to have
    # those dimensions. The resulting image does not have the same aspect
    # ratio as the original, but since our "pixels" are twice as tall as
    # they are wide we'll get our proportions back (roughly) when we render.

    pr = img.rows / FONT_ROWS
    pc = img.columns / FONT_COLS
    img.resize!(pc, pr)

    img = img.quantize(16, Magick::GRAYColorspace)
    img = img.normalize

    # Depending on compile-time options for ImageMagick - pixel instensity is stored in different scales
    # This will calculate the correct denominator to use
    quantum_calc = Magick::QuantumRange / Magick::QuantumPixel.to_i

    # Draw the image surrounded by a border. The `view' method is slow but
    # it makes it easy to address individual pixels. In grayscale images,
    # all three RGB channels have the same value so the red channel is as
    # good as any for choosing which character to represent the intensity of
    # this particular pixel.

    border = '+' + ('-' * pc) + '+'
    puts border

    img.view(0, 0, pc, pr) do |view|
      pr.times do |i|
      putc '|'
      pc.times { |j| putc CHARS[view[i][j].red/quantum_calc] }
      puts '|'
    end
    end
    border
  end
end