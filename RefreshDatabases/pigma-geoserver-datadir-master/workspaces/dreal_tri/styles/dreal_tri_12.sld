<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Dreal-TRI-Enjeu Réseaux de transport</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>
  

<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Routes et liaisons principales</sld:Name>
<sld:Title>Routes et liaisons principales</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<sld:or>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>12</ogc:Literal>
</ogc:PropertyIsEqualTo>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>13</ogc:Literal>
</ogc:PropertyIsEqualTo>
</sld:or>
</ogc:Filter>
<sld:LineSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#f2aa3c</sld:CssParameter>
<sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:LineSymbolizer>
</sld:Rule>
<sld:Rule>
<MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Autoroutes et quasi-autoroutes</sld:Name>
<sld:Title>Autoroutes et quasi-autoroutes</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>11</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:LineSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#9f5ce5</sld:CssParameter>
<sld:CssParameter name="stroke-width">2</sld:CssParameter>
</sld:Stroke>
</sld:LineSymbolizer>
</sld:Rule>
  
<sld:Rule>
<MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Voie ferrée principale</sld:Name>
<sld:Title>Voie ferrée principale</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>14</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:LineSymbolizer>
<sld:Stroke>
<sld:CssParameter name="stroke">#000000</sld:CssParameter>
<sld:CssParameter name="stroke-width">3</sld:CssParameter>
<sld:CssParameter name="stroke-dasharray">5 2</sld:CssParameter>
</sld:Stroke>
</sld:LineSymbolizer>
</sld:Rule>


</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>