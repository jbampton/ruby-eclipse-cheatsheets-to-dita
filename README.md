# Eclipse cheat sheets (XML) to DITA with Ruby, XSL, Nokogiri

## The Ruby Story

This project uses [Ruby](https://www.ruby-lang.org/en/) and tries to be and easy to use tutorial on all things  [Ruby](http://ruby-doc.org).

Ruby dates back to the 1990's and was first created by a Japanese man named [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto). 

Hey come and check out the [Ruby in 4 seconds](https://youtu.be/ayx4fASYkZU) video.

There are two types of Ruby files: .rb, .rbw

[Matz](https://twitter.com/matz_translated) made run Ruby fun and easy to learn, so don't be scared and first check out a short Ruby YouTube video I created.

[Ruby in 29 seconds](https://youtu.be/2ei7S0FU65E)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## Project Background

I worked on the open source [Java](https://www.oracle.com/java/index.html) based project [Debrief](http://debrief.info/) the leading maritime analysis tool which is also on GitHub at [https://github.com/debrief/debrief](https://github.com/debrief/debrief).  

The Debrief project used [Apache Ant](http://ant.apache.org), [SaxonHE](https://sourceforge.net/projects/saxon/files/Saxon-HE/), [XSLT 2.0](https://www.w3.org/TR/xslt20/) and [XPath](https://www.w3.org/TR/xpath-3/) and ran inside [Eclipse](https://eclipse.org) therefore requiring [Java](http://www.oracle.com/technetwork/java/javase/downloads/index.html).  The Debrief document publishing project has been extracted into its own self contained GitHub repository at [https://github.com/jbampton/eclipse-cheatsheets-to-dita-to-pdf](https://github.com/jbampton/eclipse-cheatsheets-to-dita-to-pdf).

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## From Java, XSLT 2.0 with Saxon to Ruby, XSLT 1.0 with the Nokogiri Ruby gem

Using [Ruby](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=59579) on this project allows use to harness the power of [RubyGems](https://rubygems.org/) particularly the [Nokogiri](http://www.nokogiri.org/) gem along with XSLT 1.0 / XPath 1.0 to create the DITA XML files.  Using Ruby eliminates the need to use Eclipse and Apache Ant and can be run standalone from the command line as long as you have Ruby installed.  This project is only one step from the publishing pipeline that was built on Debrief project which produced a [PDF](https://acrobat.adobe.com/us/en/why-adobe/about-adobe-pdf.html) as its final output. 

The Ruby file that is used in this project is 'default.rb' builds the output parent Ditamap 'map.ditamap' (output/map.ditamap) and the 4 sub dita tasks in the 'output/dita' folder. 

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## DITA Background

[Darwin Information Typing Architecture](https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture) (DITA) is an [XML](https://en.wikipedia.org/wiki/XML) data model for authoring and using the [DITA Open Toolkit](http://www.dita-ot.org/) (DITA-OT) you can publish those ideas.

The DITA standard is maintained by the [OASIS](https://www.oasis-open.org/) DITA Technical Committee.

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## The Project

[Ruby](https://www.ruby-lang.org/en/) is very [powerful](https://www.ruby-lang.org/en/documentation/success-stories/), is growing in popularity and is currently ranked 12th on the [TIOBE Index](http://www.tiobe.com/tiobe_index). 

This project's Ruby code has some [XSL](https://en.wikipedia.org/wiki/XSL) code embedded,
 as well as some [XML](https://en.wikipedia.org/wiki/XML) markup in an interpolated [Heredoc](http://ruby-doc.org/core-2.2.0/doc/syntax/literals_rdoc.html) syntax. 

The [Eclipse cheat sheets](http://help.eclipse.org/mars/index.jsp?topic=%2Forg.eclipse.platform.doc.user%2Freference%2Fref-cheatsheets.htm) test data folder - 'cheatsheets-xml-test-data' is best viewed inside Eclipse, and is used as input when 'default.rb' runs.

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## Short online courses

If you are still to afraid to dive in and try Ruby, how about some easy free web based interactive courses on Ruby and technology in general:

- [Try Ruby](http://tryruby.org/levels/1/challenges/0) 
- [Codecademy Ruby](https://www.codecademy.com/learn/ruby)
- [Learn the command line](https://www.codecademy.com/learn/learn-the-command-line)
- [Try Git](https://www.codeschool.com/courses/try-git)
- [Learn Git](https://www.codecademy.com/learn/learn-git)

And then come train in the [REAL DOJO](http://www.codewars.com) and reach your highest potential, become **faster**, **stronger** and **more powerful**....**JEDI MASTER LEVEL**.....**??!?!!**  

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## IDE Choice

You will by now want to write your own homegrown Ruby Code so some programmers use advanced integrated development environments ([IDE's](https://en.wikipedia.org/wiki/Integrated_development_environment)) that offer colored code markup or auto completion as you type.

- [Atom](https://atom.io/)
- [Komodo Edit](http://komodoide.com/komodo-edit/)
- [Sublime Text](https://www.sublimetext.com/)
- [Komodo IDE](http://komodoide.com/)
- [JetBrains RubyMine](https://www.jetbrains.com/ruby/)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

## Installation

As we are using Ruby you will need to see if it's installed on your system.

So now that you are the [Chuck Norris](https://en.wikipedia.org/wiki/Chuck_Norris) of all things Ruby, open a terminal and type:

### ruby -v  

For further information on your local Ruby environment type: 

### ruby --help

![ruby -v](documentation/images/rvm-ruby-v.png)

![ruby --help](documentation/images/ruby-help.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

[man pages](https://en.wikipedia.org/wiki/Man_page) contain a lot of information about programs.

### man ruby

![man ruby](documentation/images/man-ruby.png)

You can use the up and down arrows to navigate through the man page.  Press q to quit

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

Ruby also ships with 'ri' a tool used to display information about Ruby Classes, modules and methods from your terminal

A lot of people don't know 'ri' exists and use google search instead.

### man ri

![man ri](documentation/images/man-ri.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

Ruby also ships with a fantastic tool called IRB.  IRB is the interactive Ruby shell where you can test out your Ruby commands inside a terminal.  I made [short video on IRB](https://www.youtube.com/watch?v=CpFgz5Iq3qA) on Youtube to the magical sounds of Fon Leman.

### man irb

![man irb](documentation/images/man-irb.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

And to use IRB type:

### irb

![irb](documentation/images/irb.png)

You type 'exit' to stop using irb and return to the standard terminal.

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

You can add 'tab' completion to irb by creating a .irbrc file

You can use the nano editor to create this by entering:

### nano .irbrc

Then entering the next line:

### require 'irb/completion'

This program uses the Nokogiri gem so you must install it by running:

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

### gem install nokogiri

![gem install nokogiri](documentation/images/gem-install-nokogiri.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

For more information on the gem command:

### gem -h 

![gem -h](documentation/images/gem-h.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

I recommend running: 

### gem list --local  

that shows which gems are currently installed on your system.  

![gem list --local](documentation/images/gem-list-local.png)

To see in further detail which gems are installed bring up a locally served web page at http://localhost:8808/ by typing: 

### gem server

![gem server](documentation/images/gem-server.png)

![gem server localhost](documentation/images/gem-server-webpage.png)

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)

I used RubyMine and OS X for development.  RubyMine is an integrated development environment (IDE) for Ruby and Rails projects and has Git functionality built in.

RubyMine is a very advanced code editor that is a commercial product from JetBrains.  I also like PyCharm and IntelliJ from JetBrains.

Eclipse is a more general purpose IDE written mainly in Java.

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## Resources

Nokogiri - http://www.nokogiri.org/

JetBrains RubyMine - https://www.jetbrains.com/ruby/

Eclipse - https://eclipse.org/

Eclipse cheat sheets - http://help.eclipse.org/mars/index.jsp?topic=%2Forg.eclipse.platform.doc.user%2Freference%2Fref-cheatsheets.htm

DITA - https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture

XSLT FAQ. Docbook FAQ. Braille. - http://www.dpawson.co.uk/

W3C - The Extensible Stylesheet Language Family (XSL) - http://www.w3.org/Style/XSL/

The Organization for the Advancement of Structured Information Standards (OASIS) - https://en.wikipedia.org/wiki/OASIS_(organization)

Codecademy - Learn the Command Line - https://www.codecademy.com/courses/learn-the-command-line

Codecademy - Learn Ruby - https://www.codecademy.com/learn/ruby

CodeSchool - Got 15 minutes and want to learn Git? https://try.github.io/levels/1/challenges/1

CodeSchool Try Ruby - https://www.codeschool.com/courses/try-ruby

Ruby regular expression editor - http://rubular.com/

JetBrains Intellij - https://www.jetbrains.com/idea/

JetBrains PyCharm - https://www.jetbrains.com/pycharm/

Essential programmer training - http://www.codewars.com/

Help and documentation for the Ruby programming language - http://ruby-doc.org/

Ruby Programming Language - https://www.ruby-lang.org/en/

The Ruby Toolbox - https://www.ruby-toolbox.com/

Homebrew - The missing package manager for OS X - http://brew.sh/

Install Homebrew formulas - http://brewformulas.org/

Oracle Virtualbox - https://www.virtualbox.org/

RubyInstaller for Windows - http://rubyinstaller.org/

Ruby Version Manager (RVM) - https://rvm.io/

Installing Ruby - https://www.ruby-lang.org/en/documentation/installation/ 

Ruby success stories - https://www.ruby-lang.org/en/documentation/success-stories/

Ruby Motion success stories - http://www.rubymotion.com/references/success-stories/

The Top Ruby Jobs - https://toprubyjobs.com/

Australian companies using Rails - https://github.com/rails-oceania/roro/wiki/Australian-Companies-using-Ruby-on-Rails

IDE - Integrated Development Environment - https://en.wikipedia.org/wiki/Integrated_development_environment

Git (software) - https://en.wikipedia.org/wiki/Git_(software)

man page - https://en.wikipedia.org/wiki/Man_page

Terminal (OS X) - https://en.wikipedia.org/wiki/Terminal_(OS_X)

Mastering Markdown - https://guides.github.com/features/mastering-markdown/

One-Click rubyinstaller and DevKit - https://bintray.com/oneclick/rubyinstaller

MinGW - Minimalist GNU for Windows - http://www.mingw.org/

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## List of Ruby

https://github.com/ruby/ruby

https://twitter.com/matz_translated

https://twitter.com/yukihiro_matz

https://www.facebook.com/pages/Yukihiro-Matsumoto/109410772411674

https://plus.google.com/communities/101878695540653445908

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri) [&#8595;](#contributions)


## Contributions
Fork and pull request. Simple.

[&#8593;](#eclipse-cheat-sheets-xml-to-dita-with-ruby-xsl-nokogiri)
