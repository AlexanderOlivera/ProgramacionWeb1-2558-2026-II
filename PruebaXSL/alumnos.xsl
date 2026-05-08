<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                  
<xsl:template match="/"> <!--Toma el xml-->
  
  
  <html>
    <style>
      table {
      border-collapse: collapse;
      width: 50%;
      }
      th {
      background-color: #333;
      color: white;
      }
      td, th {
      padding: 8px;
      text-align: center;
      }
      
      h1{
      color: blue;
      }
      
    </style>
    <body>
      <h1>Lista de alumnos</h1>
      <table border="1">
        <tr>
          <th>Nombre</th>
          <th>Edad</th>
        </tr>
        
        <xsl:for-each select="alumnos/alumno"> <!--Recorre al alumno dentro del XML-->
          <tr>
            <td><xsl:value-of select="nombre"/></td> <!--Extrae el valor de cada etiqueta-->
            <td><xsl:value-of select="edad"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
  
</xsl:template>

</xsl:stylesheet>