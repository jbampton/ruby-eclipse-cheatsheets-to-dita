require 'nokogiri'
require 'date'

order = ['intro_composite.xml','analysis_composite.xml','s2r_composite.xml','satc_composite.xml']

ditamap = "<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE map PUBLIC '-//OASIS//DTD DITA Map//EN' 'map.dtd'>
<map>
  <title>Debrief Topic Map</title>"

Dir.glob("cheatsheets-xml-test-data/**/*_composite.xml").sort_by{|_| order.index(File.basename(_))}.each do |filename|
  document = Nokogiri::XML(File.new(filename))
  template = Nokogiri::XSLT(File.read('default.xsl'))
  ditamap+="\n  <topicref href='dita/#{File.basename(filename,'.*')}.dita' type='task'/>"
  transformed_document = template.transform(document)
  File.open("output/dita/" + File.basename(filename,'.*') + '.dita', 'w').write(transformed_document)
end

ditamap+="\n</map>"

File.open("output/map.ditamap",'w'){|f| f.write("#{ditamap}")}

puts ditamap
