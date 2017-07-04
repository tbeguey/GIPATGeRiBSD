<?xml version="1.0" encoding="utf-8"?>
<StyledLayerDescriptor version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  
  <NamedLayer>
    <Name>quartiers prioritaires</Name>
    <UserStyle>
      <FeatureTypeStyle>
    
         <Rule>
       <Name>Quartier prioritaire</Name>
     <Title>Quartier prioritaire</Title>
                 <MinScaleDenominator>490000</MinScaleDenominator>
       
 <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>square</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#000000</CssParameter>
                  <CssParameter name="fill-opacity">1</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#FFFFFF</CssParameter>
                  <CssParameter name="stroke-opacity">1</CssParameter>
                  <CssParameter name="stroke-width">0.3</CssParameter>
                </Stroke></Mark><Size>6</Size>
              <Rotation>0</Rotation>
            </Graphic>
          </PointSymbolizer>
        </Rule>


    
     <Rule>
      <MaxScaleDenominator>490000</MaxScaleDenominator>
          <Name>quartiers prioritaires</Name>
          <Title>Quartier prioritaire-Périmètre</Title>
          <PolygonSymbolizer>
                <Fill>
                  <CssParameter name="fill">#6F4D98</CssParameter>
                  <CssParameter name="fill-opacity">0.5</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#6F4D98</CssParameter>
                  <CssParameter name="stroke-opacity">1</CssParameter>
                  <CssParameter name="stroke-width">0.5</CssParameter>
                </Stroke>                
          </PolygonSymbolizer>
      

      
        </Rule>
    
    
    
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>