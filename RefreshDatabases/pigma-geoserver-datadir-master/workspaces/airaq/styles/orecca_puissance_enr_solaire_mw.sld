<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
   <sld:NamedLayer>
      <sld:Name>airaq:orecca_soes_puissance_enr_solairePV</sld:Name>
      <sld:UserStyle>
         <sld:FeatureTypeStyle>
            <sld:Rule>
               <sld:Name>Classe_4629</sld:Name>
               <sld:Title>0 à 1 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThan>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>0</ogc:Literal>
                     </ogc:PropertyIsGreaterThan>
                     <ogc:PropertyIsLessThanOrEqualTo>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>1</ogc:Literal>
                     </ogc:PropertyIsLessThanOrEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#EB6838</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>2</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_5030</sld:Name>
               <sld:Title>1 à 5 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThan>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>1</ogc:Literal>
                     </ogc:PropertyIsGreaterThan>
                     <ogc:PropertyIsLessThanOrEqualTo>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>5</ogc:Literal>
                     </ogc:PropertyIsLessThanOrEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#EB6838</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>10</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_5659</sld:Name>
               <sld:Title>5 à 10 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThan>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>5</ogc:Literal>
                     </ogc:PropertyIsGreaterThan>
                     <ogc:PropertyIsLessThanOrEqualTo>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>10</ogc:Literal>
                     </ogc:PropertyIsLessThanOrEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#EB6838</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>20</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_6630</sld:Name>
               <sld:Title>10 à 50 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThan>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>10</ogc:Literal>
                     </ogc:PropertyIsGreaterThan>
                     <ogc:PropertyIsLessThanOrEqualTo>
                        <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                        <ogc:Literal>50</ogc:Literal>
                     </ogc:PropertyIsLessThanOrEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#EB6838</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>40</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_7031</sld:Name>
               <sld:Title>Plus de 50 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsGreaterThan>
                     <ogc:PropertyName>puiss_mw_s</ogc:PropertyName>
                     <ogc:Literal>50</ogc:Literal>
                  </ogc:PropertyIsGreaterThan>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#EB6838</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>60</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
         </sld:FeatureTypeStyle>
      </sld:UserStyle>
   </sld:NamedLayer>
</sld:StyledLayerDescriptor>