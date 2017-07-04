<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>ign:ign_bdparcellaire_parcelles</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>Classe_328</sld:Name>
                    <sld:Title>ign_bdparcellaire_parcelles</sld:Title>
                    <sld:MaxScaleDenominator>5000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#818181</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#E20000</sld:CssParameter>
                            <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">0.1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:TextSymbolizer>
                        <Geometry>
                            <ogc:Function name="centroid">
                                <ogc:PropertyName>the_geom</ogc:PropertyName>
                            </ogc:Function>
                        </Geometry>
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">numero</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-family">Arial</sld:CssParameter>
                            <sld:CssParameter name="font-size">11</sld:CssParameter>
                            <sld:CssParameter name="font-style">bold</sld:CssParameter>
                        </sld:Font>
                            <sld:Halo>
                              <sld:Radius>1</sld:Radius>
                              <sld:Fill>
                                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                                <sld:CssParameter name="fill-opacity">0.7</sld:CssParameter>
                              </sld:Fill>
                            </sld:Halo>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E20000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>