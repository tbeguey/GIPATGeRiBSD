<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
<sld:NamedLayer>
<sld:Name>Corridors-Boisements de feuillus et forêts</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>
<sld:Rule>
  <sld:MinScaleDenominator>99999</sld:MinScaleDenominator>  
<sld:Name>Boisements de conifères et milieux associés</sld:Name>
<sld:Title>Boisements de conifères et milieux associés</sld:Title>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://slash</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#888528</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>10</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#888528</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>