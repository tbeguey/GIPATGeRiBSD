<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Dreal-TRI-Probalités de crues-Env Synth</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>
  
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Alea Faible Proba-Env Synth</sld:Name>
<sld:Title>Alea Faible Proba-Env Synth</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>scenario</ogc:PropertyName>
<ogc:Literal>04Fai</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#8AECA3</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.3</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>