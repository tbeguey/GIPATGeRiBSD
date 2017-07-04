<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>COMMUNE</sld:Name>
    <sld:UserStyle>
      <sld:Name>AtlasStyler 1.8</sld:Name>
      <sld:Title/>
      <sld:FeatureTypeStyle>
        <sld:Name>TEXT_LABEL</sld:Name>
        <sld:Title>TextRuleList</sld:Title>
        <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
        <sld:Rule>
          <sld:Name>DEFAULT</sld:Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:Literal>LABEL_CLASS_ENABLED</ogc:Literal>
                  <ogc:Literal>LABEL_CLASS_ENABLED</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsEqualTo>
                  <ogc:Literal>1</ogc:Literal>
                  <ogc:Literal>1</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <sld:MaxScaleDenominator>200000</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
          <Geometry>
          <ogc:Function name="centroid">
          <ogc:PropertyName>the_geom</ogc:PropertyName>
          </ogc:Function>
          </Geometry>
            <sld:Label>
              <ogc:PropertyName>NOM</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">10.0</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:PointPlacement>
                <sld:AnchorPoint>
                  <sld:AnchorPointX>0.5</sld:AnchorPointX>
                  <sld:AnchorPointY>0.5</sld:AnchorPointY>
                </sld:AnchorPoint>
                <sld:Displacement>
                  <sld:DisplacementX>0.0</sld:DisplacementX>
                  <sld:DisplacementY>0.0</sld:DisplacementY>
                </sld:Displacement>
              </sld:PointPlacement>
            </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>1.0</sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF00FF</sld:CssParameter>
            </sld:Fill>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
        <sld:Name>SINGLE_SYMBOL_POLYGON</sld:Name>
        <sld:Title>SinglePolygonSymbolRuleList</sld:Title>
        <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
        <sld:Rule>
          <sld:Title>default{COMMUNE.SHP}</sld:Title>
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
          <sld:MaxScaleDenominator>200000</sld:MaxScaleDenominator>
          <sld:PolygonSymbolizer>
            <sld:Geometry>
              <ogc:PropertyName>the_geom</ogc:PropertyName>
            </sld:Geometry>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#ff00ff</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>