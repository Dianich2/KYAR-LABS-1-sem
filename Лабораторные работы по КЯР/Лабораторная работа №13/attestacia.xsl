<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1 align="center">Аттестация учащихся 7-ПИ группы за сентябрь-октябрь</h1>
            <table border="2" style="width:1200px">
                <xsl:for-each select="students/head">
                    <tr>
                        <th><xsl:value-of select="SNP"></xsl:value-of></th>
                        <th colspan="9"><xsl:value-of select="marks"></xsl:value-of></th>
                    </tr>
                </xsl:for-each>   
                <tr>
                    <td> </td>
                        <xsl:variable name="subject" select="students/head/subjects/subject"/>
                        <xsl:for-each select="$subject">
                            <xsl:variable name="a" select="."/>
                            <td style="writing-mode: vertical-lr">
                                <xsl:value-of select="$a">
                                </xsl:value-of>
                            </td>
                        </xsl:for-each>
                </tr>
                    <xsl:variable name="student" select="students/student"/>
                    <xsl:for-each select="$student">
                        <tr>
                            <td><xsl:value-of select="SNP"></xsl:value-of></td>
                                <xsl:variable name="a" select="marks/mark"/>
                                <xsl:for-each select="$a">
                                    <xsl:variable name="c" select="."/>
                                    <xsl:choose>
                                        <xsl:when test="$c &lt; 4">
                                            <td bgcolor="red"><xsl:value-of select="$c"></xsl:value-of></td>
                                        </xsl:when>
                                        <xsl:when test="$c &gt; 8">
                                            <td bgcolor="green"><xsl:value-of select="$c"></xsl:value-of></td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td><xsl:value-of select="$c"></xsl:value-of></td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    
                                </xsl:for-each> 
                        </tr>
                    </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>