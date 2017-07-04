<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld
 http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Prestations ALPI - Adhérents</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

  <Rule>
       <Name>Administration générale</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
      
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>Administration générale</ogc:Literal>
        </ogc:PropertyIsEqualTo>
     
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/administration_generale.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
   
   
   <Rule>
       <Name>Enfance-Jeunesse</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">

        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>Enfance - Jeunesse</ogc:Literal>
        </ogc:PropertyIsEqualTo>

      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/enfance.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>

  <Rule>
       <Name>e-Communication</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>e-Communication</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
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
   
  <Rule>
       <Name>e-Administration</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>e-Administration</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/e_administration.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
   
  <Rule>
       <Name>Sécurité informatique</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>Sécurité informatique</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/securite_informatique.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
   
  <Rule>
       <Name>Action sociale</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>Action sociale</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/action_sociale.svg" />
                <Format>image/svg</Format>
              </ExternalGraphic>
              <Size>40</Size>
            </Graphic>
          </PointSymbolizer>
     </Rule>
   
   
  <Rule>
       <Name>Matériel</Name>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
          <ogc:PropertyName>categories</ogc:PropertyName>
          <ogc:Literal>Matériel</ogc:Literal>
        </ogc:PropertyIsEqualTo>
      </ogc:Filter>
      <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/logo/alpi/materiel.svg" />
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