<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>campings</Name>
    <UserStyle>
      <Title>campings_cars</Title>
      <FeatureTypeStyle>
       <Rule>
       <Name>Small</Name>
       <MinScaleDenominator>490000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/campingcars.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>12</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
       <Name>Medium</Name>
       <MaxScaleDenominator>490000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/campingcars.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>26</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>