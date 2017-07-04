<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
   <sld:NamedLayer>
      <sld:Name>urbanisme:urbanisme_zonages</sld:Name>
      <sld:UserStyle>
         <sld:FeatureTypeStyle>
            <sld:Rule>
               <sld:Name>Zone Ua</sld:Name>
               <sld:Title>Zone Ua</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>Ua</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#FF9494</sld:CssParameter>
                  </sld:Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone Uh</sld:Name>
               <sld:Title>Zone Uh</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>Uh</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#FFD0A0</sld:CssParameter>
                  </sld:Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone Ui</sld:Name>
               <sld:Title>Zone Ui</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>Ui</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D0A0FF</sld:CssParameter>
                  </sld:Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone N</sld:Name>
               <sld:Title>Zone N</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>N</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#C0FF60</sld:CssParameter>
                  </sld:Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone A</sld:Name>
               <sld:Title>Zone A</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>A</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#FFFFB0</sld:CssParameter>
                  </sld:Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
           </sld:Rule>
           <sld:Rule>
               <sld:Name>Zone AUa</sld:Name>
               <sld:Title>Zone AUa</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>AUa</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <Fill>
                     <GraphicFill>
                     <Graphic>
                       <Mark>
                           <WellKnownName>shape://vertline</WellKnownName>
                           <Stroke>
                               <CssParameter name="stroke">#FF5050</CssParameter>
                               <CssParameter name="stroke-width">13</CssParameter>
                           </Stroke>
                       </Mark>
                       <Size>23</Size>
                     </Graphic>
                     </GraphicFill>
                   </Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
           </sld:Rule>
           <sld:Rule>
               <sld:Name>Zone AUh</sld:Name>
               <sld:Title>Zone AUh</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>AUh</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <Fill>
                     <GraphicFill>
                     <Graphic>
                       <Mark>
                           <WellKnownName>shape://vertline</WellKnownName>
                           <Stroke>
                               <CssParameter name="stroke">#FF8000</CssParameter>
                               <CssParameter name="stroke-width">13</CssParameter>
                           </Stroke>
                       </Mark>
                       <Size>23</Size>
                     </Graphic>
                     </GraphicFill>
                   </Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
           </sld:Rule>
           <sld:Rule>
               <sld:Name>Zone AUi</sld:Name>
               <sld:Title>Zone AUi</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>AUi</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <Fill>
                     <GraphicFill>
                     <Graphic>
                       <Mark>
                           <WellKnownName>shape://vertline</WellKnownName>
                           <Stroke>
                               <CssParameter name="stroke">#A040FF</CssParameter>
                               <CssParameter name="stroke-width">13</CssParameter>
                           </Stroke>
                       </Mark>
                       <Size>23</Size>
                     </Graphic>
                     </GraphicFill>
                   </Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone AUc</sld:Name>
               <sld:Title>Zone AUc</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>AUc</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <Fill>
                     <GraphicFill>
                     <Graphic>
                       <Mark>
                           <WellKnownName>shape://vertline</WellKnownName>
                           <Stroke>
                               <CssParameter name="stroke">#000000</CssParameter>
                               <CssParameter name="stroke-width">13</CssParameter>
                           </Stroke>
                       </Mark>
                       <Size>23</Size>
                     </Graphic>
                     </GraphicFill>
                   </Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Zone AUs</sld:Name>
               <sld:Title>Zone AUs</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>AUs</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <Fill>
                     <GraphicFill>
                     <Graphic>
                       <Mark>
                           <WellKnownName>shape://vertline</WellKnownName>
                           <Stroke>
                               <CssParameter name="stroke">#B3B3B3</CssParameter>
                               <CssParameter name="stroke-width">13</CssParameter>
                           </Stroke>
                       </Mark>
                       <Size>23</Size>
                     </Graphic>
                     </GraphicFill>
                   </Fill>
                  <sld:Stroke>
                     <sld:CssParameter name="stroke">#9C0505</sld:CssParameter>
                     <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                     <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
                  </sld:Stroke>
               </sld:PolygonSymbolizer>
            </sld:Rule>
         </sld:FeatureTypeStyle>
      </sld:UserStyle>
   </sld:NamedLayer>
</sld:StyledLayerDescriptor>