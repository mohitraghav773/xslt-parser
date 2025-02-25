<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">

  <!-- Import common templates -->
  <xsl:import href="common.xslt"/>

  <!-- Include additional templates -->
  <xsl:include href="secondary.xslt"/>

  <xsl:output method="html" indent="yes"/>

  <!-- Main template -->
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Worker Information</title>
      </head>
      <body>
        <h1>Worker Information</h1>
        <xsl:apply-templates select="/*[local-name()='Get_Workers_Response']/*[local-name()='Worker']"/>
      </body>
    </html>
  </xsl:template>

  <!-- Template for processing each worker -->
  <xsl:template match="*[local-name()='Worker']">
    <div class="worker">
      <h2>Worker Details</h2>
      <p><strong>Worker ID:</strong> <xsl:value-of select="*[local-name()='Worker_Data']/*[local-name()='Worker_ID']"/></p>
      <p>
        <strong>Status:</strong>
        <xsl:choose>
          <xsl:when test="*[local-name()='Worker_Data']/*[local-name()='Worker_Status_Data']/*[local-name()='Active'] = '1'">
            Active
          </xsl:when>
          <xsl:otherwise>
            Inactive
          </xsl:otherwise>
        </xsl:choose>
      </p>
      <p>
        <strong>Name:</strong>
        <xsl:value-of select="*[local-name()='Worker_Data']/*[local-name()='Personal_Data']/*[local-name()='Name_Data']/*[local-name()='Legal_Name_Data']/*[local-name()='Name_Detail_Data']/*[local-name()='First_Name']"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="*[local-name()='Worker_Data']/*[local-name()='Personal_Data']/*[local-name()='Name_Data']/*[local-name()='Legal_Name_Data']/*[local-name()='Name_Detail_Data']/*[local-name()='Last_Name']"/>
      </p>
      <h3>Roles:</h3>
      <ul>
        <xsl:for-each select="*[local-name()='Worker_Data']/*[local-name()='Role_Data']/*[local-name()='Organization_Role']">
          <li>
            <xsl:value-of select="*[local-name()='Organization_Role_Reference']/@wd:Descriptor"/>
          </li>
        </xsl:for-each>
      </ul>
    </div>
  </xsl:template>
</xsl:stylesheet>
