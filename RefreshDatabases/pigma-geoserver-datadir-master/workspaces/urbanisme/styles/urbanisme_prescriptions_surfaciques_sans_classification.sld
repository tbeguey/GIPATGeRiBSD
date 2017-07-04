<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>AtlasStyler 1.9</sld:Name>
  <sld:Title/>
<FeatureTypeStyle>
     <Rule>
       <sld:Name>01</sld:Name>
       <sld:Title>Espace boisé classé</sld:Title>
       <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
          <ogc:PropertyIsEqualTo>
             <ogc:PropertyName>typepsc</ogc:PropertyName>
             <ogc:Literal>01</ogc:Literal>
          </ogc:PropertyIsEqualTo>
       </ogc:Filter>
       <PolygonSymbolizer>
         <Fill>
           <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>circle</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#008000</CssParameter>
                   <CssParameter name="stroke-width">2</CssParameter>
                 </Stroke>
               </Mark>
               <Size>16</Size>
             </Graphic>
           </GraphicFill>
         </Fill>
         <sld:Stroke>
           <sld:CssParameter name="stroke">#F97400</sld:CssParameter>
           <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
           <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
         </sld:Stroke>
       </PolygonSymbolizer>
     </Rule>
     <sld:Rule>
          <sld:Name>05</sld:Name>
          <sld:Title>Emplacement réservé</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typepsc</ogc:PropertyName>
              <ogc:Literal>05</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#F97400</CssParameter>
                   <CssParameter name="stroke-width">2</CssParameter>
                 </Stroke>
               </Mark>
               <Size>20</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#F97400</sld:CssParameter>
               <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
               <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
     </sld:Rule>
     <sld:Rule>
          <sld:Name>09</sld:Name>
          <sld:Title>Emplacement réservé logement</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typepsc</ogc:PropertyName>
              <ogc:Literal>09</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#F97400</CssParameter>
                   <CssParameter name="stroke-width">2</CssParameter>
                 </Stroke>
               </Mark>
               <Size>20</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#F97400</sld:CssParameter>
               <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
               <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
     </sld:Rule>
     <sld:Rule>
          <sld:Name>21</sld:Name>
          <sld:Title>Terrain concerné par la localisation d'équipements en zone U</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typepsc</ogc:PropertyName>
              <ogc:Literal>21</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#F97400</CssParameter>
                   <CssParameter name="stroke-width">2</CssParameter>
                 </Stroke>
               </Mark>
               <Size>20</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#F97400</sld:CssParameter>
               <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
               <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
     </sld:Rule>
     <sld:Rule>
       <sld:Name>urbanisme_prescriptions_surfaciques_sans_classification</sld:Name>
       <sld:Title>Autre prescription surfacique</sld:Title>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:Or>
                                <ogc:Or>
                                    <ogc:Not>
                                        <ogc:PropertyIsEqualTo>
                                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                                            <ogc:Literal>01</ogc:Literal>
                                        </ogc:PropertyIsEqualTo>
                                    </ogc:Not>
                                    <ogc:Not>
                                        <ogc:PropertyIsEqualTo>
                                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                                            <ogc:Literal>05</ogc:Literal>
                                        </ogc:PropertyIsEqualTo>
                                    </ogc:Not>
                                </ogc:Or>
                                <ogc:Not>
                                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>typepsc</ogc:PropertyName>
                                        <ogc:Literal>09</ogc:Literal>
                                    </ogc:PropertyIsEqualTo>
                                </ogc:Not>
                            </ogc:Or>
                            <ogc:Not>
                                <ogc:PropertyIsEqualTo>
                                    <ogc:PropertyName>typepsc</ogc:PropertyName>
                                    <ogc:Literal>21</ogc:Literal>
                                </ogc:PropertyIsEqualTo>
                            </ogc:Not>
                        </ogc:Or>
                    </ogc:Filter>
          <sld:PolygonSymbolizer>
            <Fill>
            <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://horline</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#F97400</CssParameter>
                   <CssParameter name="stroke-width">3</CssParameter>
                 </Stroke>
               </Mark>
               <Size>20</Size>
             </Graphic>
            </GraphicFill>
            </Fill>
            <sld:Stroke>
               <sld:CssParameter name="stroke">#F97400</sld:CssParameter>
               <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
               <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
     </sld:Rule>
</FeatureTypeStyle>
</sld:UserStyle>