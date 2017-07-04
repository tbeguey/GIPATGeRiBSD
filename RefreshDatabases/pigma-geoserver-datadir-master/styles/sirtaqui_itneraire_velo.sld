<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" 
xsi:schemaLocation="http://www.opengis.net/sld
 http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Itinéraires - Accès Vélo</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

  <Rule>
       <Name>Itinéraires - Accès Vélo</Name>
        <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/velo_itineraire.svg" />
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