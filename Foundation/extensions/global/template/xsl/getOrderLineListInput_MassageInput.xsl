<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
   
   <xsl:template match="/">
	   <OrderLine >
			<ComplexQuery>
				<xsl:attribute name="Operator">AND</xsl:attribute>
				<And>
					<Or>
						<xsl:for-each select="Order/OrderLines/OrderLine">
							<Exp>
								<xsl:attribute name="Name">CustomerPONo</xsl:attribute>
								<xsl:attribute name="Value">
									<xsl:value-of select="@CustomerPONo" />
								</xsl:attribute>
								<xsl:attribute name="CustomerPONoQryType">EQ</xsl:attribute>
							</Exp>
						</xsl:for-each>
					</Or>
				</And>
			</ComplexQuery>
			<Order>
				<xsl:attribute name="EnterpriseCode">H3G_UK</xsl:attribute>
				<xsl:attribute name="OrderNo"><xsl:value-of select="Order/@OrderNo" /></xsl:attribute>
			</Order>
	   </OrderLine>
   </xsl:template>
</xsl:stylesheet>