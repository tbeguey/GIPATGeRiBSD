<sld:StyledLayerDescriptor
xmlns:sld="http://www.opengis.net/sld" version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:gml="http://www.opengis.net/gml"
xmlns="http://www.opengis.net/sld">
  <sld:NamedLayer>
    <sld:Name>urbanisme_zoneurba</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
         <sld:Rule>
          <sld:Name>DEFAULT</sld:Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
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
          </ogc:Filter>
          <sld:MaxScaleDenominator>51000</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
          <Geometry>
          <ogc:Function name="centroid">
          <ogc:PropertyName>the_geom</ogc:PropertyName>
          </ogc:Function>
          </Geometry>
            <sld:Label>
              <ogc:PropertyName>libelle</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">12.0</sld:CssParameter>
              <sld:CssParameter name="font-style">bold</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
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
            <sld:Halo>
              <sld:Radius>1</sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
            <VendorOption name="autoWrap">10</VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Zone U</sld:Name>
          <sld:Title>Zone U</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>U</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
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
          <sld:Name>Zone Nd</sld:Name>
          <sld:Title>Zone Nd</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>Nd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EDEDED</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>      
    <sld:Rule>
          <sld:Name>Zone Nh</sld:Name>
          <sld:Title>Zone Nh</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>Nh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFC000</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>      
        <sld:Rule>
          <sld:Name>(CC) Ouvert à la construction</sld:Name>
          <sld:Title>(CC) Ouvert à la construction</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>01</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>(CC) Réservé aux activités</sld:Name>
          <sld:Title>(CC) Réservé aux activités</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>02</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
               <sld:Name>(CC) Construction non autorisée sauf exceptions prévues par la loi</sld:Name>
               <sld:Title>(CC) Construction non autorisée sauf exceptions prévues par la loi</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>typezone</ogc:PropertyName>
                     <ogc:Literal>03</ogc:Literal>
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
          <sld:Name>(CC) Zone non couverte</sld:Name>
          <sld:Title>(CC) Zone non couverte</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
          <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>99</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#808080</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>00</sld:Name>
          <sld:Title>00</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal>00</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#808080</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>sans valeur</sld:Name>
          <sld:Title>sans valeur</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>typezone</ogc:PropertyName>
              <ogc:Literal></ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#808080</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
            </sld:Fill>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#000000</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
       </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>