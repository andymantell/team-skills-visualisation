<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:template match="foo">
    <html>
      <body>
        <p>
          <xsl:value-of select="bar"/>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
