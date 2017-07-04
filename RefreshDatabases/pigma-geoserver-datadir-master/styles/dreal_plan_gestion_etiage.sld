<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>dreal:dreal_plan_gestion_etiage</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>Engagé</sld:Name>
                    <sld:Title>Engagé</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>etat</ogc:PropertyName>
                            <ogc:Literal>Engagé</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#8DD3C7</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:TextSymbolizer>
                                    <Geometry>
    <ogc:Function name="centroid">
      <ogc:PropertyName>the_geom</ogc:PropertyName>
    </ogc:Function>
  </Geometry> 
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom_pge</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#0D0D0D</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Mis en oeuvre</sld:Name>
                    <sld:Title>Mis en oeuvre</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>etat</ogc:PropertyName>
                            <ogc:Literal>Mis en oeuvre</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFFB3</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:TextSymbolizer>
                                    <Geometry>
    <ogc:Function name="centroid">
      <ogc:PropertyName>the_geom</ogc:PropertyName>
    </ogc:Function>
  </Geometry> 
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom_pge</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#000000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Initié</sld:Name>
                    <sld:Title>Initié</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>etat</ogc:PropertyName>
                            <ogc:Literal>Initié</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#BEBADA</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:TextSymbolizer>
                                    <Geometry>
    <ogc:Function name="centroid">
      <ogc:PropertyName>the_geom</ogc:PropertyName>
    </ogc:Function>
  </Geometry> 
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom_pge</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                            <sld:CssParameter name="font-weight">bold</sld:CssParameter>
                        </sld:Font>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#000000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>SAGE en cours</sld:Name>
                    <sld:Title>SAGE en cours</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>etat</ogc:PropertyName>
                            <ogc:Literal>SAGE en cours</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FB8072</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:TextSymbolizer>
                                    <Geometry>
    <ogc:Function name="centroid">
      <ogc:PropertyName>the_geom</ogc:PropertyName>
    </ogc:Function>
  </Geometry> 
                        <sld:Label>
                            <ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom_pge</ogc:PropertyName>
                        </sld:Label>
                        <sld:Font>
                            <sld:CssParameter name="font-size">10</sld:CssParameter>
                        </sld:Font>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#000000</sld:CssParameter>
                        </sld:Fill>
                    </sld:TextSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>