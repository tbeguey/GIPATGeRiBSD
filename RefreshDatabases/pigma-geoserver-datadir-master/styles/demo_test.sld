<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:demo_socio_eco_tx_chom1524_pr_actifs1524</sld:Name>
        <sld:UserStyle>
            <sld:Name>demo_socio_eco:demo_socio_eco_tx_chom1524_pr_actifs1524</sld:Name>
            <sld:Title>demo_socio_eco:demo_socio_eco_tx_chom1524_pr_actifs1524_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>demo_socio_eco:demo_socio_eco_tx_chom1524_pr_actifs1524</sld:Name>
                <sld:Rule>
                    <sld:Name>entre 0.0 et 21.4</sld:Name>
                    <sld:Title>entre 0.0 et 21.4</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>taux_de_chomage</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>0.0</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>21.4</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>entre 21.5 et 100.0</sld:Name>
                    <sld:Title>entre 21.5 et 100.0</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsBetween>
                            <ogc:PropertyName>taux_de_chomage</ogc:PropertyName>
                            <ogc:LowerBoundary>
                                <ogc:Literal>21.5</ogc:Literal>
                            </ogc:LowerBoundary>
                            <ogc:UpperBoundary>
                                <ogc:Literal>100.0</ogc:Literal>
                            </ogc:UpperBoundary>
                        </ogc:PropertyIsBetween>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#497BD1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>