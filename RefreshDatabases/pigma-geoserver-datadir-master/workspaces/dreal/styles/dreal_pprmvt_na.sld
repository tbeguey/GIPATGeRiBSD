<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>PPR-Mvt</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
			
			<sld:Rule>

			<sld:Name>Approuvé</sld:Name>
			<sld:Title>Approuvé</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>approuve</ogc:PropertyName>
			<ogc:Literal>1</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#faaf4a</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>

			<sld:Rule>

			<sld:Name>Prescrit</sld:Name>
			<sld:Title>Prescrit</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>prescrit</ogc:PropertyName>
			<ogc:Literal>1</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#fcdcb5</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>

      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>