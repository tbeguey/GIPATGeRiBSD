<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>Default Styler</sld:Name>
  <sld:Title>AtlasStyler v1.8-r201201181721, Export-Mode: PRODUCTION</sld:Title>
  <sld:FeatureTypeStyle>

    <sld:Rule>
      <sld:Title></sld:Title>
       <sld:PolygonSymbolizer>

        <sld:Stroke>
          <sld:CssParameter name="stroke">#006600</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:PolygonSymbolizer>
    </sld:Rule>
    <sld:Rule>
       <sld:TextSymbolizer>

        <sld:Label>
          <ogc:PropertyName>nom_epci</ogc:PropertyName>
        </sld:Label>
        <sld:Font>
          <sld:CssParameter name="font-family">Arial</sld:CssParameter>
          <sld:CssParameter name="font-size">10.0</sld:CssParameter>
          <sld:CssParameter name="font-style">normal</sld:CssParameter>
          <sld:CssParameter name="font-weight">bold</sld:CssParameter>
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
       <!-- <sld:Halo>
          <sld:Radius>2.0</sld:Radius>
          <sld:Fill>
            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
          </sld:Fill>

        </sld:Halo>-->
        <sld:Fill>
          <sld:CssParameter name="fill">#000000</sld:CssParameter>
        </sld:Fill>
        <VendorOption name="autoWrap">10</VendorOption>
        <sld:VendorOption name="spaceAround">1</sld:VendorOption>
        <sld:VendorOption name="group">true</sld:VendorOption>
      </sld:TextSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>