# Eclipse cheat sheets (XML) to DITA with Ruby, XSL, Nokogiri

I worked on https://github.com/debrief/debrief and this project is based on some parts of the document publishing that I did in that project

This project uses Ruby, XSLT, XPath and the Nokogiri gem to transform custom XML (Eclipse cheat sheets) into DITA.

The 'cheatsheets-xml-test-data' are best viewed inside Eclipse, and are used as input when 'default.rb' runs.

The Ruby file 'default.rb' builds the output parent Ditamap 'map.ditamap' (output/map.ditamap) and the 4 sub dita tasks in the 'output/dita' folder.

As we are using Ruby you will need to see if it's installed on your system.

In a terminal type: ruby -v  

For further information on your local Ruby environment type: ruby --help

![ruby -v](documentation/images/rvm-ruby-v.png)

![ruby --help](documentation/images/ruby-help.png)

You must install the Nokogiri gem by running:
 
gem install nokogiri

![gem install nokogiri](documentation/images/gem-install-nokogiri.png)

Type: gem -h - for more information on the gem command.

![gem -h](documentation/images/gem-h.png)

I recommend running: 

gem list --local - to see which gems are currently installed on your system.  

![gem list --local](documentation/images/gem-list-local.png)

To see in further detail which gems are installed bring up a locally served web page at http://localhost:8808/ by typing: 

gem server

![gem server](documentation/images/gem-server.png)

![gem server localhost](documentation/images/gem-server-webpage.png)

The XSL code is embedded inside Ruby as well as some XML markup in an interpolated Heredoc syntax.

The Debrief project used Apache Ant, SaxonHE, XSL and ran inside Eclipse therefor requiring Java.

This project uses Ruby to create the ditamap and Ruby and Nokogiri XSLT to create the sub task files.

Darwin Information Typing Architecture (DITA) is an XML data model for authoring and using DITA-OT you can publish those ideas.

The DITA standard is maintained by the OASIS DITA Technical Committee.

I used RubyMine and OS X for development.  RubyMine is an integrated development environment (IDE) for Ruby and Rails projects and has Git functionality built in.

RubyMine is a very advanced code editor that is a commercial product from JetBrains.  I also like PyCharm and IntelliJ from JetBrains.

Eclipse is a more general purpose IDE written mainly in Java.

##Resources

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

Essential programmer training - http://www.codewars.com/

Mastering Markdown - https://guides.github.com/features/mastering-markdown/