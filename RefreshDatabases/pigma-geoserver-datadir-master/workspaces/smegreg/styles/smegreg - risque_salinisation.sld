<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Risque de salinisation</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

<!-- FORT !-->
<sld:Rule>
<sld:Name>Risque fort</sld:Name>
<sld:Title>Risque fort</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>risque</ogc:PropertyName>
<ogc:Literal>Zone à risque fort d'invasion par les chlorures</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#ff3300</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

<!-- MOYEN !-->
<sld:Rule>
<sld:Name>Risque moyen</sld:Name>
<sld:Title>Risque moyen</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>risque</ogc:PropertyName>
<ogc:Literal>Zone à risque moyen d'invasion par les chlorures</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#ff9100</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

<!-- FAIBLE !-->

<sld:Rule>
<sld:Name>Risque faible</sld:Name>
<sld:Title>Risque faible</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<sld:Or>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>risque</ogc:PropertyName>
<ogc:Literal>Zone à risque faible d'invasion du réservoir carbonaté par les chlorures</ogc:Literal>
</ogc:PropertyIsEqualTo>

<ogc:PropertyIsEqualTo>
<ogc:PropertyName>risque</ogc:PropertyName>
<ogc:Literal>Zone à risque faible d'invasion par les chlorures</ogc:Literal>
</ogc:PropertyIsEqualTo>
</sld:Or>
</ogc:Filter>

<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#fcdf03</sld:CssParameter>
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