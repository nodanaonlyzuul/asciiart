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
    default_options = { width: 100 }
    options         = default_options.merge(options)
    
    img = Magick::Image.from_blob(@data).first

    new_width   = options[:width]
    scale       = (new_width.to_f / img.columns)
    new_height  = ((img.rows * scale) / 2).to_i

    img.resize!(new_width, new_height)

    img = img.quantize(image_chars.length, Magick::GRAYColorspace)
    img = img.normalize

    quantum_calc = Magick::QuantumRange / Magick::QuantumPixel.to_i
    
    output = ""
    
    border = '+' + ('-' * new_width) + '+' + "\n"
    output << border  

    img.view(0, 0, new_width, new_height) do |view|
      new_height.times do |i|
      output << '|'
      new_width.times { |j| output << image_chars[view[i][j].red/quantum_calc] }
      output << "|\n"
    end
    end
    
    output << border

    output
  end

  def image_chars
    @image_chars ||= [" ", ".", "~", ":", "+", "=", "o", "*", "x", "^", "%", "#", "@", "$", "M", "W"]
  end

end
