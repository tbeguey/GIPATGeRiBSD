<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>ALPI - Communes Adherentes</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>ALPI - Communes Adherentes</sld:Name>
          <sld:Title>ALPI - Communes Adherentes</sld:Title>
          <sld:PolygonSymbolizer>
                <sld:Fill>
                  <sld:CssParameter name="fill">#ff00ff</sld:CssParameter>
                  <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
                </sld:Fill>
                <sld:Stroke>
                  <sld:CssParameter name="stroke">#ff00ff</sld:CssParameter>
                  <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                  <sld:CssParameter name="stroke-width">0.3</sld:CssParameter>
                </sld:Stroke>                
          </sld:PolygonSymbolizer>
      <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">12</sld:CssParameter>
            </sld:Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0.0</AnchorPointY>
                </AnchorPoint>
              <Displacement>
                <DisplacementX>0</DisplacementX>
                <DisplacementY>10</DisplacementY>
              </Displacement>
              </PointPlacement>
            </LabelPlacement>
            <sld:Halo>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#ff00ff</sld:CssParameter>
            </sld:Fill>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>