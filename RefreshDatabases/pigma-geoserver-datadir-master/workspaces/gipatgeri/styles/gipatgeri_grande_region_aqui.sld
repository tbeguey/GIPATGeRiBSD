<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Grande Région Aquitaine</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



<sld:Rule>
<sld:Name>POITOU-CHARENTES</sld:Name>
<sld:Title>POITOU-CHARENTES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom_region</ogc:PropertyName>
<ogc:Literal>POITOU-CHARENTES</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#cccccc</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
    <sld:CssParameter name="stroke">#008BCC</sld:CssParameter>
    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
    <sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>LIMOUSIN</sld:Name>
<sld:Title>LIMOUSIN</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom_region</ogc:PropertyName>
<ogc:Literal>LIMOUSIN</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#cccccc</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
    <sld:CssParameter name="stroke">#008BCC</sld:CssParameter>
    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
    <sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>AQUITAINE</sld:Name>
<sld:Title>AQUITAINE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>nom_region</ogc:PropertyName>
<ogc:Literal>AQUITAINE</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#cccccc</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
    <sld:CssParameter name="stroke">#008BCC</sld:CssParameter>
    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
    <sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>




</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>