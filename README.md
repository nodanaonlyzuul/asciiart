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
    puts a.to_ascii_art
      => ...untold glory follows

_or_

    require 'asciiart'
    a = AsciiArt.new("https://f.cloud.github.com/assets/54012/36827/2081922c-5377-11e2-9e39-3fafca0cdb79.png")
      => #<AsciiArt:0x007fa889cbacf8 @data="...">
    puts a.to_ascii_art
    +----------------------------------------------------------------------------------------------------+
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooooooooooooooooo++oo+++++++o+o+oooooooooooooooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooooooooooo++++++++::::::::::+:+++++++oooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooo+++::~~~......... . ........~~~::+++oooooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooo++++:~~.                          .~~:++++ooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooo++:~~.       ....~~~~~~~~~~~....        .~~:+++oooooooooooooooooooooooooooooo|
    |oooooooooooooooooooo+++:~         .~~:::+++++o+++++++::~~..       .~:++ooooooooooooooooooooooooooooo|
    |oooooooooooooooooo++::~.      .~~:::+++o+oooooooooo+++++:::~~..     .~::++oooooooooooooooooooooooooo|
    |ooooooooooooooooo++:~.      .~+++oooooooooooooooooooooooooo++:~.      .~:++ooooooooooooooooooooooooo|
    |ooooooooooooooo++:~..     .~~:+++oooooooooooooooooooooooooo+++:~~.     ..~:+oooooooooooooooooooooooo|
    |ooooooooooooooo+:~.     .~:+++::+++++ooooooo+ooooooooooo++++::++::~.     ..:++oooooooooooooooooooooo|
    |ooooooooooooo+++~.    .~::+++:~~~~~~:::::::::~~~::::::::~~.~.~::++:~~.     ~:+oooooooooooooooooooooo|
    |ooooooooooo+++:~.    ~::++++:.        ...          ...       .~~::++::~.   .~:++oooooooooooooooooooo|
    |oooooooooooo+:~..  ..:++o+++:.                                .~:+++++:.   ..~:++ooooooooooooooooooo|
    |ooooooooooo+::..  ..:++ooo+:~.                                .~:+ooo++~~. ...~:+ooooooooooooooooooo|
    |ooooooooooo+:~. ...~:+ooo++:~.                                ..~:++oo+:~..  ..:+ooooooooooooooooooo|
    |oooooooooo++~. . .~:++o++:~~.                                   ..~++o++:~..  .:+ooooooooooooooooooo|
    |ooooooooooo:~.  .~::+oo++~~                                       ~:+o+++:.   .~++oooooooooooooooooo|
    |oooooooooo++:.  .~::++o+:~.                                      .~++oo++:~.  .:+o+ooooooooooooooooo|
    |ooooooooooo:~. ...::+oo+:~.                                       ~:+oo++:~.  .:+++ooooooooooooooooo|
    |oooooooooo++:.  .~:+++o+:~                                       .~++o++:~~   .~+ooooooooooooooooooo|
    |ooooooooooo+~.  .~~:+ooo+~.                                      .~:+o+++~~.  .~+ooooooooooooooooooo|
    |ooooooooooo:~..  .~:+++++~~.                                     .~+o+o+:~.   .:++oooooooooooooooooo|
    |ooooooooooo+~..  ..~:++o+::..                                   .~:+oo++:~.   ~:+ooooooooooooooooooo|
    |ooooooooooo++~...  .~++oo+::~.                                 ~~++o++:~.   ..~:+ooooooooooooooooooo|
    |ooooooooooo++:~.    .:+++o++:~.                             ..~:+++oo+~.   ..~:+oooooooooooooooooooo|
    |oooooooooooo++::.   ..~:++oo++::~~~.                   ...~~::+++o++:~~   ..~:+++ooooooooooooooooooo|
    |ooooooooooooo+++~.    ..::+oo+o++++:~.                .~::+++oo++++:~.    .:++o+oooooooooooooooooooo|
    |ooooooooooooooo+:~.     .~:++ooooo++:~.              .~:+o+oooo++:~..    .~:++oooooooooooooooooooooo|
    |ooooooooooooooo++::~.    .~~:++ooooo+:.              .:++oooo++:~~.    ..~:+oooooooooooooooooooooooo|
    |ooooooooooooooooo++::.      .~~::+++:~.              .~++o+::~~..     .~:++ooooooooooooooooooooooooo|
    |ooooooooooooooooooo++:..       .~::::~.              .~:::~~..      .~:++ooooooooooooooooooooooooooo|
    |oooooooooooooooooooo+++:~~..     ....                  ....      ..~~:++oooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooo+++:~~.                                ..~:++oooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooo+++:~~~....                     ...~~::++++oooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooooooo+++++::~~....   .   .....~~:::+++oooooooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooooooooooo+++++::::~:~:~::~:::::++++ooooooooooooooooooooooooooooooooooooooooo|
    |ooooooooooooooooooooooooooooooooooooo+oo+oo+o++o+oo+oooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
    +----------------------------------------------------------------------------------------------------+
     => nil

_or make it thinner_

	require 'asciiart'
    a = AsciiArt.new("https://f.cloud.github.com/assets/54012/36827/2081922c-5377-11e2-9e39-3fafca0cdb79.png")
      => #<AsciiArt:0x007fa889cbacf8 @data="...">


	print a.to_ascii_art(width: 50)
	+--------------------------------------------------+
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooo===++++====ooooooooooooooooooooo|
	|ooooooooooooo=+:~.~........~~~:+=ooooooooooooooooo|
	|oooooooooo==:~...~~:++++++:~~..~~:+=oooooooooooooo|
	|oooooooo=+:...~++====oooo====+:~..~:+=oooooooooooo|
	|ooooooo=+~..~:++==ooooooooooo=++:~..~+=ooooooooooo|
	|oooooo=+~.~:+=+~.~~~~~~~~:~~~.~:++:~.~+=oooooooooo|
	|ooooo=+~~.+===~................~+==:.~~+=ooooooooo|
	|ooooo=:~~:+=+:~................~~+=+:~.:=ooooooooo|
	|ooooo=~.~+==+~...................+==+~.:=ooooooooo|
	|ooooo=~~~+==:~...................:==+~.:=ooooooooo|
	|ooooo=~~~:==+~..................~+==+~.~=ooooooooo|
	|ooooo=:~~~+=++~.................:+=+~~~:=ooooooooo|
	|ooooo=+:..~+==+~~...........~~~+==+~..:+=ooooooooo|
	|ooooooo+:..~:+=o=+:........:+====:~.~:==oooooooooo|
	|oooooooo=+~.~~:+==+~......~+==+:~..~:+oooooooooooo|
	|ooooooooo=+:~..~~:~~.......~:~~..~:+oooooooooooooo|
	|oooooooooooo=+~~..............~:+=oooooooooooooooo|
	|ooooooooooooooo==++:~~~~~~:++==ooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	|oooooooooooooooooooooooooooooooooooooooooooooooooo|
	+--------------------------------------------------+

### In The Command Line

Local Files

    $ asciiart ~/Desktop/uncle_larry.jpg

Remote Images

    $ asciiart http://www.google.com/images/srpr/logo3w.png

Get Help

	$ asciiart -h

	Usage: asciiart [options] <path_or_url>
	    -w, --width WIDTH                Width of the finished Ascii Art (Default: 100)
	    -v, --version                    Show AsciiArt version
	    -h, --help                       Show this message

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
