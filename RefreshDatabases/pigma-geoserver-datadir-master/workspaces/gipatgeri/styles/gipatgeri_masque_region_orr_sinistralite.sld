<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Grande Région Aquitaine</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

<sld:Rule>
<MaxScaleDenominator>4367831</MaxScaleDenominator>
<sld:Name>AQUITAINE</sld:Name>
<sld:Title>AQUITAINE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom</ogc:PropertyName>
<ogc:Literal>Aquitaine</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#51c528</sld:CssParameter>
<sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>LIMOUSIN</sld:Name>
<sld:Title>LIMOUSIN</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom</ogc:PropertyName>
<ogc:Literal>Limousin</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#a39e9e</sld:CssParameter>
<sld:CssParameter name="stroke-width">0</sld:CssParameter>
</sld:Stroke>
<sld:Fill>
<sld:CssParameter name="fill">#d4d4d4</sld:CssParameter>
<sld:CssParameter name="fill-opacity">1</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>POITOU-CHARENTES</sld:Name>
<sld:Title>POITOU-CHARENTES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom</ogc:PropertyName>
<ogc:Literal>Poitou-Charentes</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#a39e9e</sld:CssParameter>
<sld:CssParameter name="stroke-width">0</sld:CssParameter>
</sld:Stroke>
<sld:Fill>
<sld:CssParameter name="fill">#d4d4d4</sld:CssParameter>
<sld:CssParameter name="fill-opacity">1</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>AUTRES REGIONS</sld:Name>
<sld:Title>AUTRES REGIONS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom</ogc:PropertyName>
<ogc:Literal>Autres régions</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#a39e9e</sld:CssParameter>
<sld:CssParameter name="stroke-width">0</sld:CssParameter>
</sld:Stroke>
<sld:Fill>
<sld:CssParameter name="fill">#e5e4e4</sld:CssParameter>
<sld:CssParameter name="fill-opacity">1</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>
  






</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>