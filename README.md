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

### From The Command Line

  $ asciiart ~/Desktop/uncle_larry.jpg

  +----------------------------------------------------------------------------------------------------+
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
  |oooooooooo=ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
  |ooooo==========oo===oo=ooooooo=oooooooooooooooooooooooo=oooooooo=o=oooo==o=o=o=oooooooooo=o=oooooooo|
  |oooooo=====o==o==o===o=oo=ooooooooooooooo=oooooooooo=ooooooooooo=o=oo=oo=oo=o=o==o=ooooo=ooooooooooo|
  |oooooo=======ooo=o=oo=o=oo=oooooo=ooooooooo===ooooo=o=o=o=ooo==oooo==o===oo==oo=oo=oo=o=o=oo=ooooooo|
  |oooooo==oo==o====o=====ooo=oooooooooooooooooooooooooooo==ooo=ooooo=ooo=oo===ooooooooooo=ooo=o==ooooo|
  |oooooo=o=oo=oo=oo==oooo=oooo=oo==oooooooooo=o=====+=+====oooooo==ooo=oo==oooo==oo==ooo=o==oooooooooo|
  |oooooo=o=oo=oo=oo=ooo=ooo=ooooooooo=ooo=+~~~..            .:=oooo=o=ooooo=o=o==oo=oo=oo=o=ooo=oooooo|
  |oooooo====o==oooo=ooooooooooooooooooo:.                      ~+=ooooo==o=oooooo=oooooo=o=o=ooooooooo|
  |ooooooo=o====oooo==ooooooooooooooo=:.    .                      ~+=ooooooo=o=ooooooo=o=o=oooo=oooooo|
  |oooooo=oooooo=oooooo=oo==ooooooo+~        .                       .+=oo=o=o=ooo=ooooooooo=o=oooooooo|
  |ooooooo==ooooooooooooooooooooo=~                                   .:=ooo=oo=ooo=oooo=o=o=o==ooooooo|
  |oooooooooo=oooo=oo=oooooooooo+~                                     .=o=oo=oooooo==ooo=oooo==ooooooo|
  |oooooo=oooo=ooooo=oooooooooo:~~   .~:~~~~~.                          ~ooo=oooooooo=o=ooo====oooooooo|
  |ooooo=o=o==oooo=o=o=oooooo=:.~.   :ooo==oo==+:~                      :o=ooooooo==oo=o=o=ooooo==ooooo|
  |ooooooooo=oooo=ooooooooooo:.~~  .+ooooooooooooo=:.                   :ooooooo=ooo=ooo==oo==oo=oooooo|
  |oooooooo=ooooooo=oo==oooo+ . .  :ooooooooooooooooo+:.                .oo=oooooooooo=oo=ooooooooooooo|
  |ooooooo==ooooooooo=o=oooo~   . ~=oooooooooooooooooooo=:~              =ooo=oooooo=oo=o===oo====ooooo|
  |ooooooo==o=ooo=oooooooooo:     :oooooooooooooooooooooooo==+::::.      ====oooo=oooo=o=oo==oo=ooooooo|
  |oooooooo=oooooooooooooooo=     +ooooo===ooooooooooooooo==++:::::     .ooooooo=oooo=oo===ooo====ooooo|
  |oooooooooo=oo=o==o=ooooooo=~   .~~~~.......~:=ooo=+:~~.      ....    +===oooooo==oo==oo===o=o==ooooo|
  |oooooo=oooo==ooooo=oooooooo=+ .+         .. .        .          ~   +oooooooooooooo=o==o=====o=ooooo|
  |ooooooo==ooooo=o=oooooooooo+==:o= ~: .+::=+=: :=: ...~~...    .~~ :~+o===o=o==ooooo==o==oo====oooooo|
  |oooooooo=oooo=ooooooooooooo==++oo=.+::=ooo== :ooo~ :+++=+~  ..+:~.::==ooo=o===o===o====o=o=====ooooo|
  |oooooo=oo=o=ooo==oooooooo=oo++===o=:::+===+.:ooo=:~ ~::++~.~:=+~~::+===o=oo=ooooo==o=o===o=====ooooo|
  |ooooooo=oo===ooo=oooooooo=oo=o====oo=o=++++==oooo:::.::+:::+++:~:=:+o=o=ooooooo=oo===o=o=======ooooo|
  |ooooo==o===ooo=ooooooooooooooo====oooooooooo=oooo:~~+=oooo==+:~~:=+oo==o==oooooo===============ooooo|
  |oooooo=o=ooo=o=oooooo=oooo=oo==+===ooooooooo=+=+~.~:++=====+::~~:+=oo==oooooooo=o==============ooooo|
  |oooooo=o===oo=oo=oooooo=ooooooo=====oo=oooooo======+=====+++:~:~=o===oo=o=o=oo=o=oo=ooo====+=++ooooo|
  |ooooo=====o===o=ooooo=oo=ooo=oo=++===o=o=++++=====+:::=++++::~~:o=o=oo=oo==o=oooooo=o======++===oooo|
  |oooooo==o====ooo=ooooo=ooo=oo==o=++===o==+:~:++:::~..~=+++:~~.~ooo=oo=oo=oo=o==ooooo=========++ooooo|
  |ooooo====o===o==ooooooo=o==o=oo=o=:++===oo=++=++++~~~++++~~~.~=oo=ooo=o==oo=o=oooo=o======+=+++ooooo|
  |ooooo======o==oo====oo=ooooooo=oo=+::++=====+::::::::::+~~. .+ooo==ooo=oooooo===o=o=o======+==+ooooo|
  |ooooo========o=o=ooo==o==o=o===o=o=+:::+==oooo===+++++:~.. .~+ooo====o=oooo=o=====oo=========+=ooooo|
  |ooooo==========oo=o=ooooo=o=oo=o=o=++:~::==o====+==++:~.  .~~:~+oooo=o=o=o=o=ooo=o=ooo====+=+=+ooooo|
  |ooooo=========o==o=oo=====oo=o==o=++++:~.~::+++++::~.    .~:~+~ ~:===oooooo==oo===ooo=o====++==ooooo|
  |ooooo+==============ooo==o=oo=o=+~:=:+++:~.  .         .~::~:=~    ..::+==oooo==oo============+=oooo|
  |ooooo=============o======oo==+::~~~o+:++++:~~..     ...~:~~:++.  .  . ...~:===ooooo===========+ooooo|
  |ooooo=============o==oo==+:~.~~~~~.+o++:++++:::::~~~~::::+++++.. ............~:++==oo=oo===+=+==oooo|
  |ooooo================++:~...~~~~~...==o=++++=+++:::++::+=====~............~~~....~~:::++======+=oooo|
  |ooooo=+====+=======::~.~~...~~~.~.~..==ooo=+++++++++++ooo==o=.~~.............~~.~......~~~~~:::=oooo|
  |ooooo=+=======++::~..~~~...~~~~~~~.. ~o=ooooo=:::~:=ooooo===:~~~~~...~.....~~.~.~.~..~..~......:oooo|
  |ooooo++===++::~~~~..~..~~~.~~~~~.~....+ooooo:. .....:oo===++.~~~~~....~~~..~~~~..~~.~~~...~....+oooo|
  |ooooo++++::~~~.~~~~...~~~..~~~~~~......=oo=           +====:.~~~~~.~~....  .~....~~.~~.~.......:oooo|
  |oooo=::~~~~~~..~.....~~~~~~~~~~~~......:oo.            =oo=:.~.~~~~..~....~...~~.~~...~~~~.....+oooo|
  |oooo=~~~~..............~~....~~.........+=. ~     .:+.:+===:.~..~.~........................... :oooo|
  |oooo=~~~~~~.~~~.~~~~~.~~~~...~~~~~~~~~~~~+:++.    ~+==oo==o:~~:~~:~~:~~~:~~.~:~:~~~:~:~~~~~~~:~+oooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo==o=oooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo==oooooo|
  |ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo=oooooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo=ooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo=ooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo=ooooooo|
  +----------------------------------------------------------------------------------------------------+

...and even URLs...

  $ asciiart http://www.google.com/images/srpr/logo3w.png

  ...hold up, downloading...
  +----------------------------------------------------------------------------------------------------+
  |ooooooo++:::~:~:::++ooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+:...~ooooooooooooooooo|
  |ooooo:~~::++++++:~.. .:ooooooooooooooooooooooooooooooooooooooooooooooooooooooo+.. :ooooooooooooooooo|
  |ooo:..:+oooooooooo+~ ~+oooooooooooooooooooooooooooooooooooooooooooooooooooooooo.. :ooooooooooooooooo|
  |o+~ .+oooooooooooooo+ooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+.. +ooooooooooooooooo|
  |+~  +oooooooooooooooooooooooo+:::::~~:+ooooooooo+++++++++oooooooo+::::~~~~::+oo.. :ooooo+:::::~~:+oo|
  |~  .ooooooooooooooooooooooo+~~+ooooo:. .:oooo++:+ooooo++:::oooo:.~++++:   :ooo+.  +ooo+:~:oooo+. .:o|
  |.   +ooooooooooooooooooooo:. +ooooooo+.  ~oo++::oooooooo+::~+o:. +ooooo:   +oo+.  +oo+~.~ooo+::~~:+o|
  |~   :oooooooooooo+ooooooo+...+oooooooo~   +o++~:oooooooo+:~~+o~  :oooooo.  +ooo.. :oo:..~+:::++ooooo|
  |+.  .+ooooooooo+::~~...~o:...:oooooooo+   +o+:::ooooooooo+~~+o+   :oooo: .:ooo+.  +oo:. .+oooooooooo|
  |o:.   :ooooooooo+oo:   :oo~  .+ooooooo:  :oo+:::+ooooooo+:~~+oo+:..~:~~.:+oooo+.  :oo+~  ~+ooooooooo|
  |oo+~   .:+ooooooooo:   +ooo~. .:oooo+: .:oooo+::~:ooooo+:~:ooooooooo~  .+ooooo+.  :oooo~   ~+++++++o|
  |oooo+:.   .~:::++::~ ..+ooooo:~~~~~:~:+oooooooo++:::++:++ooooooo++::~    ~:ooo+~~~~:+ooo+:.....~~+oo|
  |oooooooo+::::::::++++oooooooooooo+oooooooooooooooooooooooooooo:..:+++++:.  .ooooooooooooooooo+oooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo+. .ooooooooo~  +ooooooooooooooooooooooo|
  |oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo:  .+oooooooo+ .+ooooooooooooooooooooooo|
  |ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo~. .~:++++:~.:+oooooooooooooooooooooooo|
  |ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo:~~.~.~::++oooooooooooooooooooooooooo|
  +----------------------------------------------------------------------------------------------------+

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
