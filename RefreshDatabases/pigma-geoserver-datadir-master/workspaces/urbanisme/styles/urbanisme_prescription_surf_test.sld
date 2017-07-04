<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:UserLayer>
        <sld:LayerFeatureConstraints>
            <sld:FeatureTypeConstraint/>
        </sld:LayerFeatureConstraints>
        <sld:UserStyle>
            <sld:Name>prescription surf</sld:Name>
            <sld:Title/>
            <sld:FeatureTypeStyle>
                <sld:Name>group 0</sld:Name>
                <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
                <sld:SemanticTypeIdentifier>generic:geometry</sld:SemanticTypeIdentifier>
                <sld:SemanticTypeIdentifier>simple</sld:SemanticTypeIdentifier>
                <sld:Rule>
                    <sld:Name>Emplacement réservé logement</sld:Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>09</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFD9C6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#FF8040</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Autre prescription surfacique</sld:Name>
                    <ogc:Filter>
                        <ogc:Or>
                            <ogc:Or>
                                <ogc:Or>
                                    <ogc:Not>
                                        <ogc:PropertyIsEqualTo>
                                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                                            <ogc:Literal>01</ogc:Literal>
                                        </ogc:PropertyIsEqualTo>
                                    </ogc:Not>
                                    <ogc:Not>
                                        <ogc:PropertyIsEqualTo>
                                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                                            <ogc:Literal>05</ogc:Literal>
                                        </ogc:PropertyIsEqualTo>
                                    </ogc:Not>
                                </ogc:Or>
                                <ogc:Not>
                                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>typepsc</ogc:PropertyName>
                                        <ogc:Literal>09</ogc:Literal>
                                    </ogc:PropertyIsEqualTo>
                                </ogc:Not>
                            </ogc:Or>
                            <ogc:Not>
                                <ogc:PropertyIsEqualTo>
                                    <ogc:PropertyName>typepsc</ogc:PropertyName>
                                    <ogc:Literal>21</ogc:Literal>
                                </ogc:PropertyIsEqualTo>
                            </ogc:Not>
                        </ogc:Or>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFFC6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#D7D700</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Terrains concernés par la localisation d'équipements en zone U</sld:Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>21</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFCCFF</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#FF00FF</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Emplacement réservé</sld:Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>05</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill/>
                        <sld:Stroke/>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Espace boisé classé</sld:Name>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>typepsc</ogc:PropertyName>
                            <ogc:Literal>01</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#80FF80</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#008040</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:UserLayer>
</sld:StyledLayerDescriptor>