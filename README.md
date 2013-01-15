# ASCII Art

## Installation

Add this line to your application's Gemfile:

    gem 'asciiart'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asciiart

## Usage
    require 'asciiart'
    a = AsciiArt.new("/Users/sschor/Desktop/uncle_larry.jpg")
      => #<AsciiArt:0x00000100878678 @file=#<File:/Users/sschor/Desktop/uncle_larry.jpg>>
    a.to_ascii_art
      => ...untold glory follows

[use the asciiart binary from the command line](https://gist.github.com/d95c95c701e181fc768e)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
