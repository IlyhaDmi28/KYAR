<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<table border="1px">
    <xsl:for-each select="atest/student">
        <tr>
                    <td><xsl:value-of select="name"/></td>
                    <xsl:choose>
                    <xsl:when test="mark &gt; 8">
                        
                        <td style="background-color: green"><xsl:value-of select="mark"/></td>
                    </xsl:when>
                    <xsl:when test="mark &lt; 4">
                        <td style="background-color: red"><xsl:value-of select="mark"/></td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td><xsl:value-of select="mark"/></td>
                    </xsl:otherwise>
                    </xsl:choose>                 
        </tr>
    </xsl:for-each>
</table>
</body>
</html>    
</xsl:template>
</xsl:stylesheet>