<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>agrn:petit_patrimoine</sld:Name>
        <sld:UserStyle>
            <sld:Name>agrn:petit_patrimoine</sld:Name>
            <sld:Title>agrn:petit_patrimoine_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>agrn:petit_patrimoine</sld:Name>
                <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
                <sld:SemanticTypeIdentifier>SemanticType[ANY]</sld:SemanticTypeIdentifier>
                <sld:Rule>
                    <sld:Name>pigeonnier</sld:Name>
                    <sld:Title>pigeonnier</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>pigeonnier</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#8DD3C7</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Vanne</sld:Name>
                    <sld:Title>Vanne</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Vanne</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#FFFFB3</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Moulin</sld:Name>
                    <sld:Title>Moulin</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Moulin</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#BEBADA</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>puit</sld:Name>
                    <sld:Title>puit</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>puit</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#FB8072</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>four à pain</sld:Name>
                    <sld:Title>four à pain</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>four à pain</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#80B1D3</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Croix</sld:Name>
                    <sld:Title>Croix</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Croix</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#FDB462</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Barrage</sld:Name>
                    <sld:Title>Barrage</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Barrage</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#B3DE69</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Puit</sld:Name>
                    <sld:Title>Puit</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Puit</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#FCCDE5</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Lavoir</sld:Name>
                    <sld:Title>Lavoir</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Lavoir</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#D9D9D9</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Chateau</sld:Name>
                    <sld:Title>Chateau</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Chateau</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#BC80BD</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Monument aux morts</sld:Name>
                    <sld:Title>Monument aux morts</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Monument aux morts</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#CCEBC5</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Four a pain</sld:Name>
                    <sld:Title>Four a pain</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Four a pain</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#FFED6F</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>moulin</sld:Name>
                    <sld:Title>moulin</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>moulin</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#2F376D</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Four à pain</sld:Name>
                    <sld:Title>Four à pain</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>TYPE</ogc:PropertyName>
                            <ogc:Literal>Four à pain</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">
                                        <ogc:Literal>#B5AC07</ogc:Literal>
                                    </sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">
                                        <ogc:Literal>1.0</ogc:Literal>
                                    </sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Opacity>
                                <ogc:Literal>1.0</ogc:Literal>
                            </sld:Opacity>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                            <sld:Rotation>
                                <ogc:Literal>0</ogc:Literal>
                            </sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>