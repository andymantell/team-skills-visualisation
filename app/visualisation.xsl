<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/2000/svg">

  <!-- <?xml version="1.0" standalone="no"?> -->
  <!-- <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd"> -->

  <xsl:template match="skills">
    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 250 250">
      <circle cx="50%" cy="100" r="100" stroke="black" stroke-width="1" fill="transparent" />
      <circle cx="50%" cy="100" r="75" stroke="black" stroke-width="1" fill="transparent" />
      <circle cx="50%" cy="100" r="50" stroke="black" stroke-width="1" fill="transparent" />
      <circle cx="50%" cy="100" r="25" stroke="black" stroke-width="1" fill="transparent" />

      <xsl:apply-templates match="skill" />
    </svg>
  </xsl:template>

  <xsl:template match="skill">


    <!-- <svg x="50%" y="50%"> -->
      <g>
        <xsl:attribute name="transform">

          <xsl:text>translate(50 50) </xsl:text>

          <xsl:text>rotate(</xsl:text>
          <xsl:value-of select="((360 div count(../*)) * position()) - 90" />
          <xsl:text>)</xsl:text>
        </xsl:attribute>

        <!-- <text>
          <xsl:value-of select="count(../*))" />
          <xsl:value-of select="position()" />
        </text> -->

        <text><xsl:value-of select="."/></text>
      </g>
    <!-- </svg> -->
  </xsl:template>

</xsl:stylesheet>




