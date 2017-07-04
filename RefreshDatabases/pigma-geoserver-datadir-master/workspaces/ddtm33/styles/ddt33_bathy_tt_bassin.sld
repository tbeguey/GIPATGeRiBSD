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
            <ColorMap type="intervals">
            
          
         <ColorMapEntry color="#FFFFFF" quantity="0" opacity="0" />
         <ColorMapEntry color="#86A4C0" quantity="5" opacity="1" label="0-5m"/>
         <ColorMapEntry color="#4B7AA7" quantity="10" opacity="1" label="5-10m"/>
         <ColorMapEntry color="#114A89" quantity="15" opacity="1" label="10-15m"/>
         <ColorMapEntry color="#013066" quantity="20.0" opacity="1" label="15-20m"/>
         <ColorMapEntry color="#041830" quantity="30.0" opacity="1" label=">20m" />
              
              
              </ColorMap>    
          </RasterSymbolizer>   
               
        </Rule>  
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>