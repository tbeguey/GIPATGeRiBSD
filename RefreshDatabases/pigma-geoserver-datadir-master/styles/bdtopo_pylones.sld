<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>Default Styler</sld:Name>
  <sld:Title>AtlasStyler v1.8-r201110041808, Export-Mode: PRODUCTION</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
    <sld:Rule>
      <sld:Title>default{pylones.shp}</sld:Title>
      <sld:MaxScaleDenominator>50000.0</sld:MaxScaleDenominator>
      <sld:PointSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Graphic>
          <sld:Mark>
            <sld:WellKnownName>circle</sld:WellKnownName>
            <sld:Fill>
              <sld:CssParameter name="fill">#663300</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke/>
          </sld:Mark>
          <sld:Size>13.0</sld:Size>
        </sld:Graphic>
      </sld:PointSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>