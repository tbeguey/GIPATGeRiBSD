<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld
 http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Prestations ALPI - e-Communication</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



  <Rule>
       <Name>e-Communication</Name>
       <MinScaleDenominator>490000</MinScaleDenominator>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/e_communication.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>25</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>

  <Rule>
       <Name>e-Communication</Name>
       <MaxScaleDenominator>490000</MaxScaleDenominator>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/e_communication.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
    
 
</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>