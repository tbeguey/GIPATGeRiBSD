<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" 
xsi:schemaLocation="http://www.opengis.net/sld
 http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Activités, hébergements et organismes - Accès Vélo</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

  <Rule>
       <Name>Activités et visites - Accès Vélo</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
      
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>style</ogc:PropertyName>
          <ogc:Literal>1</ogc:Literal>
        </ogc:PropertyIsEqualTo>
     
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/velo_activites.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
   
   
   <Rule>
       <Name>Hébergement - Accès Vélo</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">

        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>style</ogc:PropertyName>
          <ogc:Literal>2</ogc:Literal>
        </ogc:PropertyIsEqualTo>

      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/velo_hebergement.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>

  <Rule>
       <Name>Organismes Tourisme - Accès Vélo</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>style</ogc:PropertyName>
          <ogc:Literal>3</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/sirtaqui/velo_orga_tourisme.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>