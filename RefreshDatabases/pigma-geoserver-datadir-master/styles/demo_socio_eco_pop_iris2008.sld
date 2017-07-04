<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:iris_population_2009</sld:Name>
         <sld:UserStyle>
            <sld:FeatureTypeStyle>

                <sld:Rule>
                    <sld:Name>entre 0.0 et 212.0</sld:Name>
                    <sld:Title>entre 0.0 et 212.0</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>0</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>212</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                                                            <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FF6A06</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#FF6A06</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>2</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 213.0 et 405.0</sld:Name>
                    <sld:Title>entre 213.0 et 405.0</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>213</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>405</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                                            <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FF6A06</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>5</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 406.0 et 863.0</sld:Name>
                    <sld:Title>entre 406.0 et 863.0</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>406</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>863</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                                        <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FF6A06</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>8</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 864.0 et 2257.0</sld:Name>
                    <sld:Title>entre 864.0 et 2257.0</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>864</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>2257</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                                        <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FF6A06</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                                <sld:Stroke>
                                    <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                                    <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                                    <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                                </sld:Stroke>
                            </sld:Mark>
                            <sld:Size>11</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 2258.0 et 6631.0</sld:Name>
                    <sld:Title>entre 2258.0 et 6631.0</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>population_2009</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>2258</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>6631</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                                        <sld:MaxScaleDenominator>2000000</sld:MaxScaleDenominator>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FF6A06</sld:CssParameter>
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
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>