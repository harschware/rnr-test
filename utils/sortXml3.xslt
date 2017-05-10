<?xml version="1.0" ?>
<xsl:stylesheet
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
	<!-- you may need other namespaces declared in here -->
<!-- see: https://rhubbarb.wordpress.com/2009/04/20/comparing-xml-files/ -->

<xsl:template match="/">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="*">
	<xsl:element name="{name()}">
		<xsl:for-each select="@*">
			<xsl:sort select="name()"/>
			<xsl:attribute name="{name()}">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:for-each>
		<xsl:apply-templates>
			<xsl:sort select="name()"/>
			<xsl:sort select="@type" />
			<xsl:sort select="@name" />
			<!-- you may wish to adjust these sorting rules -->
		</xsl:apply-templates>
	</xsl:element>
</xsl:template>

<!-- you may wish to also handle text() nodes -->
<!-- you may wish to handle certain elements in specialised templates -->

</xsl:stylesheet>
