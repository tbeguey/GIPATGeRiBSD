<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- a named layer is the basic building block of an sld document -->

  <NamedLayer>
    <Name>Support du réseau de transport électrique aérien - Avec Numéro</Name>
    <UserStyle>
        <!-- they have names, titles and abstracts -->
      
      <Title>Support du réseau de transport électrique aérien - Avec Numéro</Title>
      <Abstract>Support du réseau de transport électrique aérien - Avec Numéro</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- a feature type for points -->

      <FeatureTypeStyle>
        <!--FeatureTypeName>Feature</FeatureTypeName-->
        <Rule>
          <Name>Support du réseau de transport électrique aérien - Avec Numéro</Name>
          <Title>Support du réseau de transport électrique aérien - Avec Numéro</Title>    

          <!-- like a linesymbolizer but with a fill too -->
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#F56E0F</CssParameter>
                </Fill>
              </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>