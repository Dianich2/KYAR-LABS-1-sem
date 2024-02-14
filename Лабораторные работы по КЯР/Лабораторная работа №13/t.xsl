<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1 align="center">Ну и что мне делать с этой таблицей</h1>
            <table border="1">
                    <xsl:for-each select="tabliza/colonka">
                    <xsl:sort select="tx1" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="tx1"></xsl:value-of></td>
                            <td><xsl:value-of select="tx2"></xsl:value-of></td>
                            <td><xsl:value-of select="tx3"></xsl:value-of></td>
                            <td><xsl:value-of select="tx4"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
            </table>
        </body>   
    </html>
</xsl:template>
</xsl:stylesheet>