<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<xsl:for-each select="body/des">
                <div style="font-size: 20px">
                    <p style="font-size: 23px"><xsl:value-of select="head"/></p>
                    <p style="font-size: 20px"><xsl:value-of select="obzats"/></p>
                </div>
</xsl:for-each>
<body>
<table border="1px">
    <xsl:for-each select="body/shop">
        <xsl:sort select="tovar" order="ascending"/>
        <tr>
          <td style="font-size: 25px"><xsl:value-of select="tovar"/></td>
        </tr>
    </xsl:for-each>
</table>
</body>
</html>    
</xsl:template>
</xsl:stylesheet>