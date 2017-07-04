<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>urbanisme_informations_surfaciques</sld:Name>
    <sld:UserStyle>
      <FeatureTypeStyle>
        <Rule>
          <sld:Name>urbanisme_informations_surfaciques</sld:Name>
          <sld:Title>Information (surfacique)</sld:Title>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://vertline</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#8DD3C7</CssParameter>
                   <CssParameter name="stroke-width">2.5</CssParameter>
                 </Stroke>
               </Mark>
               <Size>12</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#8DD3C7</sld:CssParameter>
               <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>