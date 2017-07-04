<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

	<sld:NamedLayer>
		<sld:Name>PCS - Etat d'avancement</sld:Name>
		<sld:UserStyle>

			<sld:FeatureTypeStyle>


				<sld:Rule>
					<sld:Name>pcs_obligatoire_realise</sld:Name>
					<sld:Title>PCS obligatoire réalisé</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_obligatoire_realise</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#70ad47</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>

				<sld:Rule>
					<sld:Name>pcs_obligatoire_en cours</sld:Name>
					<sld:Title>PCS obligatoire en cours</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_obligatoire_en cours</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#ed7d31</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>

				<sld:Rule>
					<sld:Name>pcs_obligatoire_non_realise</sld:Name>
					<sld:Title>PCS obligatoire non réalisé</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_obligatoire_non_realise</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#ff0000</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>
				<sld:Rule>
					<sld:Name>pcs_non_obligatoire_realise</sld:Name>
					<sld:Title>PCS non obligatoire réalisé</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_non_obligatoire_realise</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#c6e0b4</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>
				
				<sld:Rule>
					<sld:Name>pcs_non_obligatoire_en_cours</sld:Name>
					<sld:Title>PCS non obligatoire en cours</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_non_obligatoire_en_cours</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#f8cbad</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>
				
				<sld:Rule>
					<sld:Name>pcs_non_obligatoire_non_realise</sld:Name>
					<sld:Title>PCS non obligatoire non réalisé</sld:Title>
					<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>style</ogc:PropertyName>
							<ogc:Literal>pcs_non_obligatoire_non_realise</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<sld:PolygonSymbolizer>
						<sld:Fill>
							<sld:CssParameter name="fill">#ff7c80</sld:CssParameter>
						</sld:Fill>
						<sld:Stroke>
							<sld:CssParameter name="stroke">#000000</sld:CssParameter>
							<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
							<sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
						</sld:Stroke>
					</sld:PolygonSymbolizer>
					
				</sld:Rule>


			</sld:FeatureTypeStyle>
		</sld:UserStyle>
	</sld:NamedLayer>
</sld:StyledLayerDescriptor>