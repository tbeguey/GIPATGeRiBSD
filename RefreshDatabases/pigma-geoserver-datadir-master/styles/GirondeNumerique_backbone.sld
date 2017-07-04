<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>AtlasStyler 1.8</sld:Name>
  <sld:Title>violet</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>SINGLE_SYMBOL_LINE</sld:Name>
    <sld:Title>SingleLineSymbolRuleList</sld:Title>
    <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
    <sld:Rule>
      <sld:Title>default{L93_PPP33-backbone_polyline.shp}</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:PropertyIsEqualTo>
            <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
            <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
          </ogc:PropertyIsEqualTo>
          <ogc:PropertyIsEqualTo>
            <ogc:Literal>1</ogc:Literal>
            <ogc:Literal>1</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#CC00CC</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>