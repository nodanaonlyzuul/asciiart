# AsciiArt By:

    +----------------------------------------------------------------------------------------------------+
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oo:       ~oooo~   +oooo+:~     :o~      ~ :+   ~oooo+   ~o+        o+       ~+ooo~ ~oooo:   :oooooo|
    |oo:  +oooooooo:  :  +ooo  ~+oo+:+oooo:  +ooo+    :oo+    ~o+  +oooooo+  +oo++~  +o~ :ooo+  :  :ooooo|
    |oo:  ~ ~~ :oo+  +o:  ooo+    ~~+ooooo:  +ooo+  +~ +o  +~ ~o+   ~ ~ ~o+  +ooooo  ~o~ ~oo+  :o+  +oooo|
    |oo:  +++++oo+   :::  ~ooooo+++~  +ooo+  oooo+  +o    +o  ~o+  ++++++o+  +oooo+  :o  :oo   :::   oooo|
    |oo:  ::::::+  ~::~~:  ~o  ~:::~  oooo:  +ooo+  +o+  :oo  ~o+  ~:::::o+  ~::~   +oo  ~o   :~:~:   ooo|
    |oo+::::::::+::oooooo+::oo+:::~:+ooooo+::ooooo::ooo++ooo+:+oo::::::::oo::::::++oooo+:+o::+oooooo::+oo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    +----------------------------------------------------------------------------------------------------+

## Installation

Add this line to your application's Gemfile:

    gem 'asciiart'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asciiart

## Usage

### In Code

    require 'asciiart'
    a = AsciiArt.new("/Users/sschor/Desktop/uncle_larry.jpg")
      => #<AsciiArt:0x00000100878678 @file=#<File:/Users/sschor/Desktop/uncle_larry.jpg>>
    a.to_ascii_art
      => ...untold glory follows

### In The Command Line

Local Files

  $ asciiart ~/Desktop/uncle_larry.jpg

Remote Images
  
  $ asciiart http://www.google.com/images/srpr/logo3w.png

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
