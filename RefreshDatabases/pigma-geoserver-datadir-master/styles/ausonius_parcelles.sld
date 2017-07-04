<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>ausonius:ausonius_parcelles_1812</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>Classe_1220</sld:Name>
                    <sld:Title>Sans titre 1220</sld:Title>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#808080</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#CC0000</sld:CssParameter>
                            <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
              <sld:MaxScaleDenominator>10000</sld:MaxScaleDenominator>
                    <sld:TextSymbolizer>
                      <Geometry>
              <ogc:Function name="centroid">
              <ogc:PropertyName>the_geom</ogc:PropertyName>
              </ogc:Function>
             </Geometry>
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">id_parcel</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:Halo>
                            <sld:Radius>1</sld:Radius>
                            <sld:Fill>
                                <sld:CssParameter name="fill">#F8F2F2</sld:CssParameter>
                            </sld:Fill>
                        </sld:Halo>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#CC0000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>