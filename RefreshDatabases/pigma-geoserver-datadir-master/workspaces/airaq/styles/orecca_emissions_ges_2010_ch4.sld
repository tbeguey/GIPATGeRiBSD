<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
   <sld:NamedLayer>
      <sld:Name>airaq:orecca_emissions_ges_2012</sld:Name>
      <sld:UserStyle>
         <sld:FeatureTypeStyle>
            <sld:Rule>
               <sld:Name>Moins de 100 t(CO2e)/km²</sld:Name>
               <sld:Title>Moins de 100 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>Moins de 100 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#008100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>100 à 200 t(CO2e)/km²</sld:Name>
               <sld:Title>100 à 200 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>100 à 200 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#1F9100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>200 à 300 t(CO2e)/km²</sld:Name>
               <sld:Title>200 à 300 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>200 à 300 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#40A100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>300 à 400 t(CO2e)/km²</sld:Name>
               <sld:Title>300 à 400 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>300 à 400 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#61B100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>400 à 500 t(CO2e)/km²</sld:Name>
               <sld:Title>400 à 500 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>400 à 500 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#81C100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>500 à 750 t(CO2e)/km²</sld:Name>
               <sld:Title>500 à 750 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>500 à 750 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#A0D100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>750 à 1000 t(CO2e)/km²</sld:Name>
               <sld:Title>750 à 1000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>750 à 1000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#BFE100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>1000 à 1250 t(CO2e)/km²</sld:Name>
               <sld:Title>1000 à 1250 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>1000 à 1250 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E1F100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>1250 à 1500 t(CO2e)/km²</sld:Name>
               <sld:Title>1250 à 1500 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>1250 à 1500 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#FFE200</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>1500 à 2000 t(CO2e)/km²</sld:Name>
               <sld:Title>1500 à 2000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>1500 à 2000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#F1C100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>2000 à 3000 t(CO2e)/km²</sld:Name>
               <sld:Title>2000 à 3000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>2000 à 3000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#F1A100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>3000 à 5000 t(CO2e)/km²</sld:Name>
               <sld:Title>3000 à 5000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>3000 à 5000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E17F00</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>5000 à 10000 t(CO2e)/km²</sld:Name>
               <sld:Title>5000 à 10000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>5000 à 10000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#E16100</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>10000 à 20000 t(CO2e)/km²</sld:Name>
               <sld:Title>10000 à 20000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>10000 à 20000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D13F00</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
            <sld:Rule>
               <sld:Name>Plus de 20000 t(CO2e)/km²</sld:Name>
               <sld:Title>Plus de 20000 t(CO2e)/km²</sld:Title>
               <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>CH4_scope1</ogc:PropertyName>
                     <ogc:Literal>Plus de 20000 t(CO2e)/km²</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <sld:PolygonSymbolizer>
                  <sld:Fill>
                     <sld:CssParameter name="fill">#D11F00</sld:CssParameter>
                  </sld:Fill>
               </sld:PolygonSymbolizer>
            </sld:Rule>
         </sld:FeatureTypeStyle>
      </sld:UserStyle>
   </sld:NamedLayer>
</sld:StyledLayerDescriptor>