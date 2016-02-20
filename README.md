#Eclipse cheat sheets (XML) to DITA with Ruby, XSL, Nokogiri

I worked on the open source Java based project [Debrief](http://debrief.info/) the leading maritime analysis tool which is also on GitHub at [https://github.com/debrief/debrief](https://github.com/debrief/debrief).  

The Debrief project used Apache Ant, SaxonHE, XSLT 2.0 and XPath 2.0 and ran inside Eclipse therefore requiring Java.  The Debrief document publishing project has been extracted into its own self contained GitHub repository at [https://github.com/jbampton/eclipse-cheatsheets-to-dita-to-pdf](https://github.com/jbampton/eclipse-cheatsheets-to-dita-to-pdf).

This project uses mainly uses Ruby and the Nokogiri gem along with XSLT 1.0 / XPath 1.0 to create the DITA XML files.  Using Ruby eliminates the need to use Eclipse and Apache Ant and can be run standalone from the command line as long as you have Ruby installed.

Darwin Information Typing Architecture (DITA) is an XML data model for authoring and using DITA-OT you can publish those ideas.

The DITA standard is maintained by the OASIS DITA Technical Committee.

The XSL code is embedded inside Ruby as well as some XML markup in an interpolated Heredoc syntax. 

The 'cheatsheets-xml-test-data' are best viewed inside Eclipse, and are used as input when 'default.rb' runs.

The Ruby file 'default.rb' builds the output parent Ditamap 'map.ditamap' (output/map.ditamap) and the 4 sub dita tasks in the 'output/dita' folder.

As we are using Ruby you will need to see if it's installed on your system.

In a terminal type: 

###ruby -v  

For further information on your local Ruby environment type: 

###ruby --help

![ruby -v](documentation/images/rvm-ruby-v.png)

![ruby --help](documentation/images/ruby-help.png)

If you would like to read more in-depth about Ruby type:

###man ruby

![man ruby](documentation/images/man-ruby.png)

You can use the up and down arrows to navigate through the man page.  Press q to quit

Ruby also ships with 'ri' a tool used to display information about Ruby Classes, modules and methods from your terminal

A lot of people don't know 'ri' exists and use google search instead.

###man ri

![man ri](documentation/images/man-ri.png)

Ruby also ships with a fantastic tool called IRB.  IRB is the interactive Ruby console where you can test out your Ruby commands inside a terminal.  

###man irb

![man irb](documentation/images/man-irb.png)

And to use IRB type:

###irb

![irb](documentation/images/irb.png)

You type 'exit' to stop using irb and return to the standard terminal.

Man pages hold a lot of information about programs and should be your first point of call when trying to understand a program like Ruby

This program uses the Nokogiri gem so you must install it by running:
 
###gem install nokogiri

![gem install nokogiri](documentation/images/gem-install-nokogiri.png)

For more information on the gem command:

###gem -h 

![gem -h](documentation/images/gem-h.png)

I recommend running: 

###gem list --local  

that shows which gems are currently installed on your system.  

![gem list --local](documentation/images/gem-list-local.png)

To see in further detail which gems are installed bring up a locally served web page at http://localhost:8808/ by typing: 

###gem server

![gem server](documentation/images/gem-server.png)

![gem server localhost](documentation/images/gem-server-webpage.png)

I used RubyMine and OS X for development.  RubyMine is an integrated development environment (IDE) for Ruby and Rails projects and has Git functionality built in.

RubyMine is a very advanced code editor that is a commercial product from JetBrains.  I also like PyCharm and IntelliJ from JetBrains.

Eclipse is a more general purpose IDE written mainly in Java.

##Resources

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

Essential programmer training - http://www.codewars.com/

Mastering Markdown - https://guides.github.com/features/mastering-markdown/