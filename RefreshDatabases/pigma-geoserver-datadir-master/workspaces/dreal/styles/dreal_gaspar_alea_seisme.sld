<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>Risque Séisme</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
			
			<sld:Rule>
			<sld:Name>Sismicité très faible</sld:Name>
			<sld:Title>Sismicité très faible</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>sismicite</ogc:PropertyName>
			<ogc:Literal>1</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#feefd0</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>
			
			<sld:Rule>
			<sld:Name>Sismicité faible</sld:Name>
			<sld:Title>Sismicité faible</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>sismicite</ogc:PropertyName>
			<ogc:Literal>2</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#efe708</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>
			
			<sld:Rule>
			<sld:Name>Sismicité modérée</sld:Name>
			<sld:Title>Sismicité modérée</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>sismicite</ogc:PropertyName>
			<ogc:Literal>3</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#f98e58</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>
			
			
			<sld:Rule>
			<sld:Name>Sismicité moyenne</sld:Name>
			<sld:Title>Sismicité moyenne</sld:Title>
			<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
			<ogc:PropertyIsEqualTo>
			<ogc:PropertyName>sismicite</ogc:PropertyName>
			<ogc:Literal>4</ogc:Literal>
			</ogc:PropertyIsEqualTo>
			</ogc:Filter>
			<sld:PolygonSymbolizer>
			<sld:Fill>
			<sld:CssParameter name="fill">#de0f2b</sld:CssParameter>
			</sld:Fill>
			</sld:PolygonSymbolizer>
			</sld:Rule>
			
			


      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>