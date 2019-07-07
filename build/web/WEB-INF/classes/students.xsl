<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : students.xsl
    Created on : October 23, 2018, 1:32 AM
    Author     : Hari
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>students.xsl</title>
            </head>
            <body>
                <p>IDHU EPDI IRUKU</p>
                <table border="2">
                    <th>Name</th>
                    <th>Id</th>
                    <th>Per</th>
                    <xsl:for-each select="students/student">
                        <xsl:if test="per>55">
                        <tr>
                        <td>
                            <xsl:value-of select="name"/>
                        </td>
                        <td>
                            <xsl:value-of select="id"/>
                        </td>
                        <td>
                            <xsl:value-of select="per"/>
                        </td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>    
                </table>    
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
