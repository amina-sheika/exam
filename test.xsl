<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		 <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Employee Management System</h1>
                
                <table border="2" align="center">
                    <tr >
                        
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>EMAIL</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                        
                        
                    </tr>
                    <xsl:for-each select="Company/Employee/emp">
                        <xsl:sort select = "Emp-name"/>
                        <xsl:if test="Emp-age &gt; 18">
                            <tr >

                                <xsl:choose>
                                    <xsl:when test="Emp-salary &gt; 500">
                                        <td bgcolor="#ff00ff">
                                            <xsl:value-of select="Emp-name"/>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            <xsl:value-of select="Emp-name"/>
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                                
                                <td>
                                    <xsl:value-of select="Emp-age"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-salary"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-email"></xsl:value-of>
                                </td>

                                <td>
                                    <xsl:value-of select="Emp-phonenum"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-designation"></xsl:value-of>
                                </td>
                                
                                                                
                                

                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <br>
                    <br>
                    </br>
                </br>
                
                
                <h1 style="text-align:center">Employee Management Details</h1>
                <xsl:apply-templates/>
            </body>
        </html>
          
    </xsl:template>

    <xsl:template match="cd">
        <p>
            <xsl:apply-templates select="name"/>
            <xsl:apply-templates select="sex"/>
            <xsl:apply-templates select="age"/>
            <xsl:apply-templates select="blood-group"/>
            <xsl:apply-templates select="quantity"/>
            <xsl:apply-templates select="contact"/>
            <xsl:apply-templates select="date"/>
            
        </p>
    </xsl:template>

    <xsl:template match="name">
        Name: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    

    <xsl:template match="sex">
        Sex: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="age">
        Age: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="blood-group">
        blood-group: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="quantity">
        Quantity: <span style="color:#ff0000">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>

    <xsl:template match="contact">
        Contact: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
    </xsl:template>
    <xsl:template match="date">
        Contact: <span style="color:#00ff00">
            <xsl:value-of select="."/>
        </span>
        <br />
	</xsl:template>
</xsl:stylesheet>