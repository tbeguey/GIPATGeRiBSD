<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>Default Styler</sld:Name>
  <sld:Title>AtlasStyler v1.8-r201109271751, Export-Mode: PRODUCTION</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
    <sld:Rule>
      <sld:Title></sld:Title>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:PolygonSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Fill>
          <sld:GraphicFill>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>shape://times</sld:WellKnownName>
                <sld:Stroke>
                  <sld:CssParameter name="stroke">#333333</sld:CssParameter>
                  <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
              <sld:Size>12.000000357627869</sld:Size>
            </sld:Graphic>
          </sld:GraphicFill>
          <sld:CssParameter name="fill">#000000</sld:CssParameter>
          <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
        </sld:Fill>
      </sld:PolygonSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>