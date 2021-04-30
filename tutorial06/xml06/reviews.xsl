<?xml version="1.0" encoding="UTF-8" ?>
<!--
    New Perspectives on XML, 3rd Edition
    Tutorial 6
    Tutorial Case
    
    Harpe Gaming Review Style Sheet
    Author: Tai Lam
    Date: April 29, 2021 
    
    Filename: reviews.xsl
    Supporting Files: 
-->


<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:r="http://example.com/reviews"
    xmlns:c="http://example.com/customers">
    
    <xsl:variable name="customerList"
      select="document('customers.xml')/c:customers/c:customer" />

    <xsl:template match="r:review">
        <h2>
            <xsl:value-of select="r:title" />
        </h2>
        <table id="reviewTable">
            <tr>
                <th>Review Date:</th>
                <td>
                    <xsl:value-of select="r:reviewDate" />
                </td>
            </tr>
        </table>
        
        <xsl:copy-of select="r:description/*" />
      
    </xsl:template>
    
    
</xsl:stylesheet>
