<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" type="text/css" href="slider.css"/>
            <script type="text/javascript" src="slideshow.js"></script>
        </head>
        <body>

            <div class="slideshow-container">
                <xsl:for-each select="slideshow/slides/slide">
                    <div class="mySlides fade">
                        <div class="numbertext"><xsl:value-of select="number"/></div>
                        <img src="{image}" style="width:100%"/>
                        <div class="text"><xsl:value-of select="caption"/></div>
                    </div>
                </xsl:for-each>

                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>
            </div>

            <br/>
            <div style="text-align:center">
                <xsl:for-each select="slideshow/slides/slide">
                    <span class="dot" onclick="currentSlide(position())"></span>
                </xsl:for-each>
            </div>

        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
