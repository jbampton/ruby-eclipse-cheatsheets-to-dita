require 'nokogiri'
require 'date'

sortOrder = ['intro_composite.xml','analysis_composite.xml','s2r_composite.xml','satc_composite.xml']

ditamap = "<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE map PUBLIC '-//OASIS//DTD DITA Map//EN' 'map.dtd'>
<map>
  <title>Debrief Topic Map</title>
  <topicmeta>
    <searchtitle>Eclipse cheat sheets to PDF</searchtitle>
    <shortdesc>Document Publishing Adventures with the DITA Open Toolkit</shortdesc>
    <author>Debrief</author>
    <author>John Bampton</author>
    <source>http://debrief.info/</source>
    <publisher>Github John Bampton</publisher>
    <critdates>
      <created date='#{Date.today}'/>
    </critdates>
    <audience type='programmer' job='troubleshooting' experiencelevel='expert'/>
    <category>Java</category>
    <category>Document Publishing</category>
    <othermeta name='Publishing' content='PDF,TocJS,XHTML,DITA,HTMLhelp'/>
  </topicmeta>"

Dir.glob("cheatsheets-xml-test-data/**/*_composite.xml").sort_by{|_| sortOrder.index(File.basename(_))}.each do |filename|
  document = Nokogiri::XML(File.new(filename))
  template = Nokogiri::XSLT(File.read('default.xsl'))
  ditamap+="\n  <topicref href='dita/#{File.basename(filename,'.*')}.dita' type='task'/>"
  transformed_document = template.transform(document)
  File.open("output/dita/" + File.basename(filename,'.*') + '.dita', 'w').write(transformed_document)
end

ditamap+="\n</map>"
File.open("output/map.ditamap",'w'){|f| f.write("#{ditamap}")}

puts ditamap

