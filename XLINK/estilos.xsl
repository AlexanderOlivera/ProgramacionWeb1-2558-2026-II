<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xlink="http://www.w3.org/1999/xlink">
  
  <xsl:template match="/catalogo">
    <html>
      <head><title>Catálogo</title></head>
      <body style="font-family: sans-serif; padding: 2em;">
        <h1>Catálogo de libros</h1>
        <ul>
          <xsl:for-each select="libro">
            <li>
              <a href="{@xlink:href}" target="_blank">    
                <xsl:value-of select="."/>
              </a>
            </li>
          </xsl:for-each>          
        </ul>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>