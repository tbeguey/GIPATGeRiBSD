<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
   <sld:NamedLayer>
      <sld:Name>airaq:orecca_conso_energie_finale_2012</sld:Name>
      <sld:UserStyle>
         <sld:FeatureTypeStyle>
            <sld:Rule>
               <sld:Name>Moins de 100 MWh/km²</sld:Name>
               <sld:Title>Moins de 100 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>Moins de 100 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#B1E6FF</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>100 à 150 MWh/km²</sld:Name>
               <sld:Title>100 à 150 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>100 à 150 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#C1E1F1</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>150 à 200 MWh/km²</sld:Name>
               <sld:Title>150 à 200 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>150 à 200 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#C1D1D1</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>200 à 300 MWh/km²</sld:Name>
               <sld:Title>200 à 300 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>200 à 300 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D1D1C1</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>300 à 500 MWh/km²</sld:Name>
               <sld:Title>300 à 500 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>300 à 500 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D1D1B1</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>500 à 700 MWh/km²</sld:Name>
               <sld:Title>500 à 700 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>500 à 700 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E1C191</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>700 à 1000 MWh/km²</sld:Name>
               <sld:Title>700 à 1000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>700 à 1000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E1C181</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>1000 à 1500 MWh/km²</sld:Name>
               <sld:Title>1000 à 1500 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>1000 à 1500 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#F1B170</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>1500 à 2000 MWh/km²</sld:Name>
               <sld:Title>1500 à 2000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>1500 à 2000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#FF9040</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>2000 à 3000 MWh/km²</sld:Name>
               <sld:Title>2000 à 3000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>2000 à 3000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#F18140</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>3000 à 5000 MWh/km²</sld:Name>
               <sld:Title>3000 à 5000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>3000 à 5000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#F17030</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>5000 à 10000 MWh/km²</sld:Name>
               <sld:Title>5000 à 10000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>5000 à 10000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E15130</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>10000 à 15000 MWh/km²</sld:Name>
               <sld:Title>10000 à 15000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>10000 à 15000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E14020</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>15000 à 20000 MWh/km²</sld:Name>
               <sld:Title>15000 à 20000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>15000 à 20000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D13010</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>20000 à 30000 MWh/km²</sld:Name>
               <sld:Title>20000 à 30000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>20000 à 30000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D11010</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Plus de 30000 MWh/km²</sld:Name>
               <sld:Title>Plus de 30000 MWh/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CF_Industrie</ogc:PropertyName>
                     <ogc:Literal>Plus de 30000 MWh/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#C10000</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
         </sld:FeatureTypeStyle>
      </sld:UserStyle>
   </sld:NamedLayer>
</sld:StyledLayerDescriptor>