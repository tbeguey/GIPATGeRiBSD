<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
   <sld:NamedLayer>
      <sld:Name>airaq:orecca_puissance_enr_2014</sld:Name>
      <sld:UserStyle>
         <sld:FeatureTypeStyle>
            <sld:Rule>
               <sld:Name>Classe_783</sld:Name>
               <sld:Title>0,1 à 1 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThanOrEqualTo>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>0.1</ogc:Literal>
                     </ogc:PropertyIsGreaterThanOrEqualTo>
                     <ogc:PropertyIsLessThan>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>1</ogc:Literal>
                     </ogc:PropertyIsLessThan>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>4</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_1412</sld:Name>
               <sld:Title>1 à 5 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThanOrEqualTo>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>1</ogc:Literal>
                     </ogc:PropertyIsGreaterThanOrEqualTo>
                     <ogc:PropertyIsLessThan>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>5</ogc:Literal>
                     </ogc:PropertyIsLessThan>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>10</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_1889</sld:Name>
               <sld:Title>5 à 10 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThanOrEqualTo>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>5</ogc:Literal>
                     </ogc:PropertyIsGreaterThanOrEqualTo>
                     <ogc:PropertyIsLessThan>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>10</ogc:Literal>
                     </ogc:PropertyIsLessThan>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>20</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_2366</sld:Name>
               <sld:Title>10 à 20 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:And>
                     <ogc:PropertyIsGreaterThanOrEqualTo>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>10</ogc:Literal>
                     </ogc:PropertyIsGreaterThanOrEqualTo>
                     <ogc:PropertyIsLessThan>
                        <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                        <ogc:Literal>20</ogc:Literal>
                     </ogc:PropertyIsLessThan>
                  </ogc:And>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>30</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Classe_2938</sld:Name>
               <sld:Title>Plus de 20 MW</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsGreaterThanOrEqualTo>
                     <ogc:PropertyName>Puiss_MW_hydraulique</ogc:PropertyName>
                     <ogc:Literal>20</ogc:Literal>
                  </ogc:PropertyIsGreaterThanOrEqualTo>
               </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                           <sld:CssParameter name="stroke">#163A8E</sld:CssParameter>
                           <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                           <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                     </sld:Mark>
                     <sld:Size>40</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
            </sld:Rule>
         </sld:FeatureTypeStyle>
      </sld:UserStyle>
   </sld:NamedLayer>
</sld:StyledLayerDescriptor>