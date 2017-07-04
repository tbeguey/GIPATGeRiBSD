<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>PCS</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>
<sld:Rule>
<sld:Name>PCS</sld:Name>
<sld:Title>PCS</sld:Title>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://horline</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">1</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#000000</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">0.25</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>
</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>