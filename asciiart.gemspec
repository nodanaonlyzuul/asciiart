# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asciiart/version'

Gem::Specification.new do |gem|
  gem.name          = "asciiart"
  gem.version       = AsciiArt::VERSION
  gem.authors       = ["nodanaonlyzuul", "rosscooperman", "caderaspindrift", "wendy0402"]
  gem.email         = ["stephen@eastmedia.com"]
  # gem.description   = %q{A command line tool to turn images into ASCII art}
  gem.summary       = %q{A command line tool to turn images into ASCII art}
  gem.homepage      = "https://github.com/nodanaonlyzuul/asciiart"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('rmagick', '4.2.4')
  gem.add_dependency('rainbow', '3.0.0')

  gem.add_development_dependency('pry')
end
