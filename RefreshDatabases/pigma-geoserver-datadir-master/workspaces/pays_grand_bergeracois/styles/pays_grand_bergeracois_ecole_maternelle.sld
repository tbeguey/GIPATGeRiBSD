<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>pays_grand_bergeracois_ecole_maternelle</Name>
    <UserStyle>
      <Title>pays_grand_bergeracois_ecole_maternelle</Title>
      <FeatureTypeStyle>
       <Rule>
       <Name>Ecole maternelle</Name>
       <MinScaleDenominator>490000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/symboles/svg/ecoles_maternelles.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>12</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          
       <Name>Ecole maternelle</Name>
       <MaxScaleDenominator>490000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/symboles/svg/ecoles_maternelles.svg"/>
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>26</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>