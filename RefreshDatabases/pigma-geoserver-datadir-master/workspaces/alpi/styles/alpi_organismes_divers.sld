<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>Adherents ALPI - Organismes divers</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>Adherents ALPI - Organismes divers</sld:Name>
          <sld:Title>Adherents ALPI - Organismes divers</sld:Title>
          <sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>square</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#000000</sld:CssParameter>
                  <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                </sld:Fill>
                <sld:Stroke>
                  <sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter>
                  <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                  <sld:CssParameter name="stroke-width">0.3</sld:CssParameter>
                </sld:Stroke></sld:Mark><sld:Size>6</sld:Size>
              <sld:Rotation>0</sld:Rotation>
            </sld:Graphic>
          </sld:PointSymbolizer>
      <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">adherent</ogc:PropertyName>
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
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>