<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Usernames:</h2>
        <xsl:for-each select="/microbloggingSite/user/username">
          <p><xsl:value-of select="."/></p>
        </xsl:for-each>

        <h2>Posts with More than 5 Likes:</h2>
        <ul>
          <xsl:for-each select="/microbloggingSite/user/posts[likes > 5]">
            <li><xsl:value-of select="content"/></li>
          </xsl:for-each>
        </ul>

        <h2>Comments from Post ID 101:</h2>
        <ul>
          <xsl:for-each select="/microbloggingSite/user/posts[@id='101']/comments/comment">
            <li><xsl:value-of select="text"/></li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
