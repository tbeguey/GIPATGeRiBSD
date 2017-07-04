<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:demo_socio_eco_epci_population_2012</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                <sld:Rule>
                    <sld:Name>DEFAULT</sld:Name>
                    <sld:MaxScaleDenominator>500000.0</sld:MaxScaleDenominator>
                    <sld:TextSymbolizer>
                        <sld:Geometry>
                            <ogc:PropertyName>the_geom</ogc:PropertyName>
                        </sld:Geometry>
                        <sld:Label>
                            <ogc:PropertyName>libelle</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-family">Arial</sld:CssParameter>
                            <sld:CssParameter name="font-size">11.0</sld:CssParameter>
                            <sld:CssParameter name="font-style">normal</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:LabelPlacement>
                            <sld:PointPlacement>
                                <sld:AnchorPoint>
                                    <sld:AnchorPointX>0.5</sld:AnchorPointX>
                                    <sld:AnchorPointY>0.0</sld:AnchorPointY>
                                </sld:AnchorPoint>
                                <sld:Displacement>
                                    <sld:DisplacementX>0.0</sld:DisplacementX>
                                    <sld:DisplacementY>7.0</sld:DisplacementY>
                                </sld:Displacement>
                            </sld:PointPlacement>
                        </sld:LabelPlacement>
                        <sld:Halo>
                            <sld:Radius>1.5</sld:Radius>
                            <sld:Fill>
                                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                                <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                            </sld:Fill>
                        </sld:Halo>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 913.0 et 4023.0</sld:Name>
                    <sld:Title>Inférieur à 10.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsLessThanOrEqualTo>
                            <ogc:PropertyName>popul</ogc:PropertyName>
                            <ogc:Literal>10000</ogc:Literal>
                        </ogc:PropertyIsLessThanOrEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#0E0E0E</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>5</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 4046.0 et 5485.0</sld:Name>
                    <sld:Title>Entre 10.000 et 25.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>10000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>25000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>14</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 5620.0 et 7819.0</sld:Name>
                    <sld:Title>Entre 25.000 et 80.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>25000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>80000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>23</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 7904.0 et 12125.0</sld:Name>
                    <sld:Title>Entre 80.000 et 100.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>80000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>100000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>32</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 12431.0 et 18763.0</sld:Name>
                    <sld:Title>Entre 100.000 et 250.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>100000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>popul</ogc:PropertyName>
                                <ogc:Literal>250000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>41</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 19037.0 et 707223.0</sld:Name>
                    <sld:Title>Supérieur à 250.000 habs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsGreaterThan>
                            <ogc:PropertyName>popul</ogc:PropertyName>
                            <ogc:Literal>250000</ogc:Literal>
                        </ogc:PropertyIsGreaterThan>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#006F1E</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>50</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>