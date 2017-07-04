<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>cg33:Pistes cyclables</sld:Name>
    <sld:UserStyle>
  
   <!-- Pistes cyclables existantes  -->
       <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>Pistes cyclables existantes</sld:Name>
          <sld:Title>Pistes cyclables existantes</sld:Title>
      <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
      <ogc:PropertyIsEqualTo>
     <ogc:PropertyName>etat</ogc:PropertyName>
      <ogc:Literal>Aménagement Existant</ogc:Literal>
      </ogc:PropertyIsEqualTo>
      </ogc:Filter>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#00000F</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
       
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#B7DFBE</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>  
    
   <!-- Pistes cyclables en projet  -->
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>Pistes cyclables en projet</sld:Name>
          <sld:Title>Pistes cyclables en projet</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
      <ogc:PropertyIsEqualTo>
      <ogc:PropertyName>etat</ogc:PropertyName>
      <ogc:Literal>En projet</ogc:Literal>
      </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#00000F</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">5 2</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
      <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#FFA002</sld:CssParameter>
              <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
              <sld:CssParameter name="stroke-width">1</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">5 2</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>