<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">


<sld:NamedLayer>
<sld:Name>Dreal-TRI-Hauteur eau Aléa Faible Proba-Debord</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>
  
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>moins de 0,50m</sld:Name>
<sld:Title>moins de 0,50m</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ht_min</ogc:PropertyName>
<ogc:Literal>0</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#C4F2FF</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.3</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>entre 0,50m et 1m</sld:Name>
<sld:Title>entre 0,50m et 1m</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ht_min</ogc:PropertyName>
<ogc:Literal>0.5</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#A1D4F7</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.3</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>entre 1,00m et 2,00m</sld:Name>
<sld:Title>entre 1,00m et 2,00m</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ht_min</ogc:PropertyName>
<ogc:Literal>1</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#0A90B5</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.3</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>plus de 2,00m</sld:Name>
<sld:Title>plus de 2,00m</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ht_min</ogc:PropertyName>
<ogc:Literal>2</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#0B1D6F</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.3</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>