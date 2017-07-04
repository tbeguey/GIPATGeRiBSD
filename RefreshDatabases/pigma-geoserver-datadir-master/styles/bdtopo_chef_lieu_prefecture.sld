<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>AtlasStyler 1.8</sld:Name>
  <sld:Title/>
  <sld:FeatureTypeStyle>
    <sld:Name>TEXT_LABEL</sld:Name>
    <sld:Title>Prefectures</sld:Title>
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
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>RL_FILTER_APPLIED</ogc:Literal>
                <ogc:Literal>RL_FILTER_APPLIED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsLike wildCard="%" singleChar="_" escape="\">
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal>préfecture</ogc:Literal>
              </ogc:PropertyIsLike>
            </ogc:And>
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
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:TextSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Label>
          <ogc:PropertyName>NOM</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Arial</sld:CssParameter>
          <sld:CssParameter name="font-size">18.0</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">normal</sld:CssParameter>
        </sld:Font>
        <sld:LabelPlacement>
          <sld:PointPlacement>
            <sld:AnchorPoint>
              <sld:AnchorPointX>0.0</sld:AnchorPointX>
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
            <sld:CssParameter name="fill">#FFFF33</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#333333</sld:CssParameter>
        </sld:Fill>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>