<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 5
   Tutorial Case

   Chesterton Financial XSL Style Sheet
   Author: Tai Lam
   Date: April 28, 2021

   Filename: stock.xsl
   Supporting Files: down.png, same.png, stock.css, up.png

-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes"
    />
    
    <xsl:template match=”/”>
        <html>
            <head>
                <title>Portfolio Stocks</title>
                <link href="stock.css" rel="stylesheet" type="text/css" />
            </head>
            
            <body>
                <header>
                    <h1>Chesterton Financial</h1>
                    <h2>Portfolio Stocks</h2>
                </header>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
