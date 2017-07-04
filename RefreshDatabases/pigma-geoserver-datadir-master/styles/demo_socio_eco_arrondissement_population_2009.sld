<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:demo_socio_eco_departement_population_2009</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>

                <sld:Rule>
                    <sld:Name>Inférieur à 50.000 habitants</sld:Name>
                    <sld:Title>Inférieur à 50.000 habitants</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsLessThanOrEqualTo>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:Literal>50000</ogc:Literal>
                        </ogc:PropertyIsLessThanOrEqualTo>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.62</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.6</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>30</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Entre 50.000 et 100.000</sld:Name>
                    <sld:Title>Entre 50.000 et 100.000</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>50000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
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
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.66</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.66</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>30</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Entre 100.000 et 150.000 habitants</sld:Name>
                    <sld:Title>Entre 100.000 et 150.000 habitants</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>100000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>150000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.64</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.67</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>40</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Entre 150.000 et 250.000</sld:Name>
                    <sld:Title>Entre 150.000 et 250.000 habitants</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>150000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
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
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.65</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.65</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>60</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Entre 250.000 et 500.000</sld:Name>
                    <sld:Title>Entre 250.000 et 500.000 habitants</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>250000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>population_2009</ogc:PropertyName>
                                <ogc:Literal>500000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.65</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.65</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>100</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>superieur a 500000</sld:Name>
                    <sld:Title>Supérieur à 500.000 habitants</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsGreaterThan>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:Literal>500000</ogc:Literal>
                        </ogc:PropertyIsGreaterThan>
                    </ogc:Filter>
                    <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8080C0</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">0.65</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">0.66</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>150</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>