<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1 align="center">Animals</h1>
            <table border="1">
                <xsl:for-each select="animals/head" >
                    <tr bgcolor="#808080">
                        <td><xsl:value-of select="nkind_of_animal"></xsl:value-of></td>
                        <td><xsl:value-of select="ndescription"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
                    <xsl:for-each select="animals/animal">
                    <xsl:sort select="kind_of_animal" order="ascending"/>
                        <tr>
                            <td bgcolor="#c0c0c0"><xsl:value-of select="kind_of_animal"></xsl:value-of></td>
                            <td><xsl:value-of select="description"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
            </table>
        </body>   
    </html>
</xsl:template>
</xsl:stylesheet>