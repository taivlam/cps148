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
            <xsl:apply-templates select="today" />
            <p>
                <xsl:value-of select="description" />
            </p>
            <hr />
        </article>
    </xsl:template>
    
    <xsl:template match="today">
        <table>
            <thead>
                <tr>
                    <th colspan="5">Current Stock Values</th>
                </tr>
                <tr>
                    <th>Current</th>
                    <th>Open</th>
                    <th>High</th>
                    <th>Low</th>
                    <th>Volume</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <xsl:apply-templates select="@current" />
                    <xsl:apply-templates select="@open" />
                    <xsl:apply-templates select="@high" />
                    <xsl:apply-templates select="@low" />
                    <xsl:apply-templates select="@vol" />
                </tr>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="@open|@high|@low|@current|@vol">
        <td><xsl:value-of select="." /></td>
    </xsl:template>
    
</xsl:stylesheet>
