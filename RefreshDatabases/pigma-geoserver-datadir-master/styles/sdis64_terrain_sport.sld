<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns="http://www.opengis.net/sld"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld" xmlns:xlink="http://www.w3.org/1999/xlink">
    <sld:NamedLayer>
        <sld:Name>sdis:sdis64_paisport64</sld:Name>
        <sld:UserStyle>
            <sld:Name>sdis:sdis64_paisport64</sld:Name>
            <sld:Title>sdis:sdis64_paisport64_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>sdis:sdis64_paisport64</sld:Name>
                <sld:Rule>
                    <sld:Name>Fronton</sld:Name>
                    <sld:Title>Fronton</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Fronton</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8DD3C7</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Piscine</sld:Name>
                    <sld:Title>Piscine</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Piscine</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFFB3</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Trinquet</sld:Name>
                    <sld:Title>Trinquet</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Trinquet</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#BEBADA</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Stade</sld:Name>
                    <sld:Title>Stade</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Stade</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <PointSymbolizer>
                        <Graphic>
                            <ExternalGraphic>
                                <OnlineResource
                                    xlink:href="http://cartogip.fr/temp_ico_pigma/stade_terrain_sportif.png" xlink:type="simple"/>
                                <Format>image/png</Format>
                            </ExternalGraphic>
                            <Size>16</Size>
                        </Graphic>
                    </PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Spéléo</sld:Name>
                    <sld:Title>Spéléo</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Spéléo</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#80B1D3</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Hippodrome</sld:Name>
                    <sld:Title>Hippodrome</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Hippodrome</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FDB462</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Golf</sld:Name>
                    <sld:Title>Golf</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Golf</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#B3DE69</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>NR</sld:Name>
                    <sld:Title>NR</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>NR</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FCCDE5</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Autre</sld:Name>
                    <sld:Title>Autre</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Autre</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#D9D9D9</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>