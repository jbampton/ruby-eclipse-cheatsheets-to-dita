require 'nokogiri'
require 'date'
require 'prawn'

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

style = { :width => 540,
          :cell_style => {:padding => [5,5,5,5]},
          :border_color => "FF0000" }

Prawn::Document.generate("output/pdf/map.pdf") do

  stroke_axis

  doc = Nokogiri::XML(File.open("output/map.ditamap"))

  repeat :all do

    # header
    pic = "#{File.dirname(__FILE__)}/images/debrief_banner.jpg"
    image pic, :at => [0,750], :width => 520

    # footer
    bounding_box [bounds.left, bounds.bottom + 25], :width  => bounds.width do
        font "Helvetica"
        stroke_horizontal_rule
        move_down(5)
        text "And here's a sexy footer", :size => 16
    end
  end


  #content
  bounding_box [bounds.left, bounds.bottom + 600], :width  => bounds.width, :height => 520 do


    doc.xpath("/map/title").each do |x|

      text "#{x.xpath("text()")}", :size => 24, :color => "ff0000"
      move_down(5)

    end

    doc.xpath("//topicref/@href").each do |x|

      topicref = Nokogiri::XML(File.open("output/"+x))
      topicref.xpath("/task").each do |task|

        text "#{task.xpath("title/text()")}", :size => 16, :color => "0000ff"
        stroke_horizontal_rule
        move_down(3)

        text "#{task.xpath("shortdesc/text()")}"
        move_down(1)
      end
    end
  end
end