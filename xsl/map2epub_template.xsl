<!-- Convert a DITA map to a custom EPUB 

     The main style sheet, map2epubImpl.xsl, is where you should put your customizations (or in stylesheets that get imported)
          
-->
<xsl:stylesheet version="2.0"
                xmlns:opf="http://www.idpf.org/2007/opf"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Import the main EPUB transform. This will have the effect if including
       any global EPUB extensions: -->
  <xsl:import href="plugin:org.dita4publishers.epub:xsl/map2epub.xsl"/>
  
  <!-- Import your custom transform. This will be able to override anything
       in the base EPUB transform.
       
    -->
  <xsl:import href="map2epubImpl.xsl"/> <!-- relative path to your custom stylesheet -->
  
  <!-- Update the @id attribute after the first hyphen to match your custom transtype -->
  <dita:extension id="xsl.transtype-epub-custom"   
    behavior="org.dita.dost.platform.ImportXSLAction" 
    xmlns:dita="http://dita-ot.sourceforge.net"/> 


</xsl:stylesheet>
