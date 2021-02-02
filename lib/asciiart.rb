require "asciiart/version"
require 'rmagick'
require 'uri'
require 'open-uri'
require 'rainbow'
require 'rainbow/ext/string'

require File.expand_path("../asciiart/html", __FILE__)
require File.expand_path("../asciiart/text", __FILE__)

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
    renderer =  (options[:format] == "text" ? AsciiRenderer::Text.new(img) : AsciiRenderer::Html.new(img))
    renderer.to_ascii_art(options)
  end
end

