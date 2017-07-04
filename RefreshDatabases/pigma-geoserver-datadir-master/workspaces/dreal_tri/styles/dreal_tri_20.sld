<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Dreal-TRI-Enjeu Patrimoine ponctuel</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>

<!--PATRIMOINE_P-->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Patrimoine ponctuel</sld:Name>
<sld:Title>Patrimoine ponctuel</sld:Title>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/patrimoine.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>


</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>