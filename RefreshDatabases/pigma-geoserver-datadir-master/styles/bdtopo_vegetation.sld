<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>AtlasStyler 1.8</sld:Name>
  <sld:Title/>
  <sld:FeatureTypeStyle>
    <sld:Name>SINGLE_SYMBOL_POLYGON</sld:Name>
    <sld:Title>SinglePolygonSymbolRuleList</sld:Title>
    <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
    <sld:Rule>
      <MaxScaleDenominator>50000</MaxScaleDenominator>
      <sld:Title>bdtopo:vegetation</sld:Title>
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
     <!-- <sld:MaxScaleDenominator>25000</sld:MaxScaleDenominator> -->
      <sld:PolygonSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Fill>
          <sld:CssParameter name="fill">#009933</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>