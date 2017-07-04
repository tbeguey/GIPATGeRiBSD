<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
    <sld:NamedLayer>
        <sld:Name>dreal:dreal_prescriptions_urbanisme_nord_medoc</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>05</sld:Name>
                    <sld:Title>Emplacements réservés pour ouvrages publics, installations d'intérêt général ou espaces verts</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>05</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                  <PolygonSymbolizer>
            <Fill>
           <GraphicFill>
           <Graphic>
             <Mark>
             <WellKnownName>shape://slash</WellKnownName>
             <sld:Fill>
               <sld:CssParameter name="fill">#FA8688</sld:CssParameter>
               <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
             </sld:Fill>              
             <sld:Stroke>
               <sld:CssParameter name="stroke">#FA8688</sld:CssParameter>
               <sld:CssParameter name="stroke-width">2</sld:CssParameter>
             </sld:Stroke>
             </Mark>
              <Size>16</Size>
            </Graphic>
            </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>       
            <sld:Stroke>
             <sld:CssParameter name="stroke">#FA8688</sld:CssParameter>
             <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
           </PolygonSymbolizer>         
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>99</sld:Name>
                    <sld:Title>Autres emplacements réservés</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>99</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
          
        <PolygonSymbolizer>
            <Fill>
           <GraphicFill>
           <Graphic>
             <Mark>
             <WellKnownName>shape://backslash</WellKnownName>
             <sld:Fill>
               <sld:CssParameter name="fill">#377EB8</sld:CssParameter>
               <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
             </sld:Fill>              
             <sld:Stroke>
               <sld:CssParameter name="stroke">#377EB8</sld:CssParameter>
               <sld:CssParameter name="stroke-width">2</sld:CssParameter>
             </sld:Stroke>
             </Mark>
              <Size>16</Size>
            </Graphic>
            </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>       
            <sld:Stroke>
             <sld:CssParameter name="stroke">#377EB8</sld:CssParameter>
             <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
           </PolygonSymbolizer>  
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>01</sld:Name>
                    <sld:Title>Espaces boisés classés</sld:Title>
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
             <WellKnownName>shape://times</WellKnownName>
             <sld:Fill>
               <sld:CssParameter name="fill">#4DAF4A</sld:CssParameter>
               <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
             </sld:Fill>              
             <sld:Stroke>
               <sld:CssParameter name="stroke">#4DAF4A</sld:CssParameter>
               <sld:CssParameter name="stroke-width">2</sld:CssParameter>
             </sld:Stroke>
             </Mark>
              <Size>16</Size>
            </Graphic>
            </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>       
            <sld:Stroke>
             <sld:CssParameter name="stroke">#4DAF4A</sld:CssParameter>
             <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
           </PolygonSymbolizer>  
          
                     <sld:TextSymbolizer>
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">libtypepsc</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:Halo>
                            <sld:Radius>1</sld:Radius>
                            <sld:Fill>
                                <sld:CssParameter name="fill">#FFF9F9</sld:CssParameter>
                            </sld:Fill>
                        </sld:Halo>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#000000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>02</sld:Name>
                    <sld:Title>Protection contre les nuisances et risques avant servitude</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>02</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
        <PolygonSymbolizer>
            <Fill>
           <GraphicFill>
           <Graphic>
             <Mark>
             <WellKnownName>shape://plus</WellKnownName>
             <sld:Fill>
               <sld:CssParameter name="fill">#984EA4</sld:CssParameter>
               <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
             </sld:Fill>              
             <sld:Stroke>
               <sld:CssParameter name="stroke">#984EA4</sld:CssParameter>
               <sld:CssParameter name="stroke-width">2</sld:CssParameter>
             </sld:Stroke>
             </Mark>
              <Size>16</Size>
            </Graphic>
            </GraphicFill>
            </Fill>
          </PolygonSymbolizer>
          <PolygonSymbolizer>       
            <sld:Stroke>
             <sld:CssParameter name="stroke">#984EA4</sld:CssParameter>
             <sld:CssParameter name="stroke-width">2</sld:CssParameter>
            </sld:Stroke>
           </PolygonSymbolizer>  
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>