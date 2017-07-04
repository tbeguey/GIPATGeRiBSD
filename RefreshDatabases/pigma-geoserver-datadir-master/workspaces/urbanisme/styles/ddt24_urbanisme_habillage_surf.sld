<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>urbanisme_habillages_surfaciques</sld:Name>
    <sld:UserStyle>
<FeatureTypeStyle>
     <Rule>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://horline</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#EF4AFB</CssParameter>
                   <CssParameter name="stroke-width">2.5</CssParameter>
                 </Stroke>
               </Mark>
               <Size>12</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#EF4AFB</sld:CssParameter>
               <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">textecr</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">14</sld:CssParameter>
            </sld:Font>
            <sld:Fill>
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
          </sld:TextSymbolizer>
     </Rule>
</FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>