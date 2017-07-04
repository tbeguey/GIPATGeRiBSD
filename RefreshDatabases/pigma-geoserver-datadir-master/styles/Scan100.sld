<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>Ortho</Name>
    <UserStyle>
      <Name>Ortho</Name>
      <Title>Style raster pour visualisation au 50k</Title>
      <Abstract>Limitation de la visualisation de l'ortho en dessous du 1.500.000k</Abstract>
      <FeatureTypeStyle>
        <Rule>
          <Name>Règle 1</Name>
          <MaxScaleDenominator>110000</MaxScaleDenominator>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>