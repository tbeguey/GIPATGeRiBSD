<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Zonage SAGE</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

<!-- SUD !-->
<sld:Rule>
<sld:Name>SUD</sld:Name>
<sld:Title>SUD</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>zonage_sag</ogc:PropertyName>
<ogc:Literal>SUD</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#e5f656</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<!-- LITTORAL !-->
<sld:Rule>
<sld:Name>LITTORAL</sld:Name>
<sld:Title>LITTORAL</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>zonage_sag</ogc:PropertyName>
<ogc:Literal>LITTORAL</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#56d2f6</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>
 
<!-- MEDOC ESTUAIRE !-->
<sld:Rule>
<sld:Name>MEDOC ESTUAIRE</sld:Name>
<sld:Title>MEDOC ESTUAIRE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>zonage_sag</ogc:PropertyName>
<ogc:Literal>MEDOC ESTUAIRE</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#a5308e</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

  <!-- CENTRE !-->
<sld:Rule>
<sld:Name>CENTRE</sld:Name>
<sld:Title>CENTRE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>zonage_sag</ogc:PropertyName>
<ogc:Literal>CENTRE</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#b0b0b0</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>
  
  <!-- NORD!-->
<sld:Rule>
<sld:Name>NORD</sld:Name>
<sld:Title>NORD</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>zonage_sag</ogc:PropertyName>
<ogc:Literal>NORD</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#96d2db</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
              <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>
  
</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>