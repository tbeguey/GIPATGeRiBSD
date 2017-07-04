<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" 
xsi:schemaLocation="http://www.opengis.net/sld
 http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>DREAL-ICPE</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

  <Rule>
       <Name>Autorisation</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">   
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>regime</ogc:PropertyName>
          <ogc:Literal>A</ogc:Literal>
        </ogc:PropertyIsEqualTo>  
      </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#000000</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>6</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
     </Rule>
   
   
      <Rule>
       <Name>Arret</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">  
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>regime</ogc:PropertyName>
          <ogc:Literal>ARRET</ogc:Literal>
        </ogc:PropertyIsEqualTo> 
      </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>x</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#000000</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>6</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
     </Rule>
               
   
      <Rule>
       <Name>Seveso-Seuil haut</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">  
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>regime</ogc:PropertyName>
          <ogc:Literal>S</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#f4300d</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>6</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
     </Rule>
  
        <Rule>
       <Name>Seveso-Seuil bas</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">  
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>regime</ogc:PropertyName>
          <ogc:Literal>SB</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
               <sld:PointSymbolizer>
                  <sld:Graphic>
                     <sld:Mark>
                        <sld:WellKnownName>circle</sld:WellKnownName>
                        <sld:Fill>
                           <sld:CssParameter name="fill">#f9f022</sld:CssParameter>
                           <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                     </sld:Mark>
                     <sld:Size>6</sld:Size>
                     <sld:Rotation>0</sld:Rotation>
                  </sld:Graphic>
               </sld:PointSymbolizer>
     </Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>