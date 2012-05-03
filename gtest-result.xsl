<?xml version='1.0'?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="testsuites">
		<html>
			<head>
				<title> gTest Report - <xsl:value-of select="@name"/> </title>
			</head>

			<body bgcolor="#e0e0f0">
				<div align="center">
			        <h3>
            	        <b> gTest Report - <xsl:value-of select="@name"/> </b>
            		</h3>
            	</div>
		        <table cols="4" width="90%" align="center">
			        <tr>
				        <td width="25%"> </td>
				        <td width="25%"> </td>
        				<td width="25%"> </td>
        				<td width="25%"> </td>
        			</tr>
		        	<xsl:apply-templates/>
        		</table>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="testsuite">
		<tr bgcolor="#f0e0f0">
			<td colspan="4">
				Running Suite <xsl:value-of select="@name"/>
			</td>
		</tr>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="testcase">
		<tr bgcolor="#e0f0d0">
			<td> </td>
			<td colspan="2">
				Running test <xsl:value-of select="@name"/>...
			</td>
			<xsl:choose>
                <xsl:when test="child::*">
                    <td bgcolor="#ff5050"> Failed </td>
                </xsl:when>
                <xsl:otherwise>
                    <td bgcolor="#50ff50"> Passed </td>
               </xsl:otherwise>
            </xsl:choose>
		</tr>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="failure">
		<tr>
			<td colspan="2" bgcolor="#ff9090">
			    <xsl:value-of select="@message"/>
			</td>
			<td colspan="2" bgcolor="#ff9090">
			    <xsl:value-of select="."/>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
