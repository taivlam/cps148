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

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Portfolio Stocks</title>
                <link href="stock.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <header>
                    <section>
                        Last Updated:
                        <xsl:value-of select="portfolio/date" />
                        at
                        <xsl:value-of select="portfolio/time" />
                    </section>
                    <h1>Chesterton Financial</h1>
                    <h2>Portfolio Stocks</h2>
                </header>
                <section>
                    <xsl:apply-templates select="portfolio/stock" />
                </section>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="stock">
        <article>
            <h1>
                <xsl:value-of select="sName" />
                (<xsl:value-of select="sName/@symbol" />)
            </h1>
            <p>
                <xsl:value-of select="description" />
            </p>
            <hr />
        </article>
    </xsl:template>
    
</xsl:stylesheet>
