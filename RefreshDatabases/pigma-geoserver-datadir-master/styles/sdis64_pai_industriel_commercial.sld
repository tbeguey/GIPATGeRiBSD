<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" 
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>sdis:sdis64_paiindustrieletcommercial64</sld:Name>
        <sld:UserStyle>
            <sld:Name>sdis:sdis64_paiindustrieletcommercial64</sld:Name>
            <sld:Title>sdis:sdis64_paiindustrieletcommercial64_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>sdis:sdis64_paiindustrieletcommercial64</sld:Name>
                <sld:Rule>
                    <sld:Name>Divers industriel</sld:Name>
                    <sld:Title>Divers industriel</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Divers industriel</ogc:Literal>
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
                    <sld:Name>Usine</sld:Name>
                    <sld:Title>Usine</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Usine</ogc:Literal>
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
                    <sld:Name>Divers commercial</sld:Name>
                    <sld:Title>Divers commercial</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Divers commercial</ogc:Literal>
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
                    <sld:Name>Haras national</sld:Name>
                    <sld:Title>Haras national</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Haras national</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FB8072</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Zone industrielle</sld:Name>
                    <sld:Title>Zone industrielle</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Zone industrielle</ogc:Literal>
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
                    <sld:Name>Centrale électrique</sld:Name>
                    <sld:Title>Centrale électrique</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Centrale électrique</ogc:Literal>
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
                    <sld:Name>Marché</sld:Name>
                    <sld:Title>Marché</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Marché</ogc:Literal>
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
                    <sld:Name>Aquaculture</sld:Name>
                    <sld:Title>Aquaculture</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Aquaculture</ogc:Literal>
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
                <sld:Rule>
                    <sld:Name>Carrière</sld:Name>
                    <sld:Title>Carrière</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Carrière</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#BC80BD</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Mine</sld:Name>
                    <sld:Title>Mine</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Mine</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#CCEBC5</sld:CssParameter>
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