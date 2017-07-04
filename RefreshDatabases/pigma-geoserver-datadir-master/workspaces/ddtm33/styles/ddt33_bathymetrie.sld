<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <NamedLayer>
    <Name>style_bathymetrie</Name>
    <UserStyle>
      <Name>bathymetrie</Name>
      <Title>bathymetrie</Title>
      <FeatureTypeStyle>  
    <Rule>
          <RasterSymbolizer>
            
      <ColorMap>
              <ColorMapEntry color="#F1F0F3" quantity="1" opacity="0.5" label="-3-0m"/>
              <ColorMapEntry color="#86A4C0" quantity="2" opacity="0.5" label="0-5m"/>
              <ColorMapEntry color="#4B7AA7" quantity="3" opacity="0.5" label="5-10m"/>
              <ColorMapEntry color="#114A89" quantity="4" opacity="0.5" label="10-15m" />
              <ColorMapEntry color="#09408A" quantity="5" opacity="0.5" label=">15m"/>
              <ColorMapEntry color="#FFFFFF" quantity="255" opacity="0" label="no data"/>
       </ColorMap>    
          </RasterSymbolizer>      
        </Rule>  
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>