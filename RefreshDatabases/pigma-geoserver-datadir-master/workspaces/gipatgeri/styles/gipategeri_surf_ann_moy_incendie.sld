<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Surface moyenne annuelle forestière incendiée (2006-2014)</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



<sld:Rule>
<sld:Name>0 ha</sld:Name>
<sld:Title>0 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>1</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#ffffff</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>z
<sld:Name>0 à 0,5 ha</sld:Name>
<sld:Title>0 à 0,5 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>2</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFC6C6</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>0,5 à 1 ha</sld:Name>
<sld:Title>0,5 à 1 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>3</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FF8D8D</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>1 à 10 ha</sld:Name>
<sld:Title>1 à 10 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>4</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FF4545</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>10 à 50 ha</sld:Name>
<sld:Title>10 à 50 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>5</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#AA1A1A</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>Plus de 50 ha</sld:Name>
<sld:Title>Plus de 50 ha</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>style</ogc:PropertyName>
<ogc:Literal>6</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#621A3E</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>