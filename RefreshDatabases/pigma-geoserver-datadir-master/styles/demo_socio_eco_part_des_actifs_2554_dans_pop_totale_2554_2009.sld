<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:demo_socio_eco_part_des_actifs_2554_dans_pop_totale_2554_2009</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
            <sld:Rule>
            <sld:Name>DEFAULT</sld:Name>
            <sld:MaxScaleDenominator>500000.0</sld:MaxScaleDenominator>
            <sld:TextSymbolizer>
              <Geometry>
                <ogc:Function name="centroid">
                  <ogc:PropertyName>the_geom</ogc:PropertyName>
                </ogc:Function>
              </Geometry>
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
                  <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
                </sld:Fill>
              </sld:Halo>
              <sld:Fill>
                <sld:CssParameter name="fill">#000000</sld:CssParameter>
              </sld:Fill>
            </sld:TextSymbolizer>
          </sld:Rule>
                <sld:Rule>
                    <sld:Name>0 à 50 %</sld:Name>
                    <sld:Title>0 à 50 %</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>0</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>50</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFFD2</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>50 à 70 %</sld:Name>
                    <sld:Title>50 à 70 %</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>50</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>70</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFF80</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>70 à 80 %</sld:Name>
                    <sld:Title>70 à 80 %</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>70</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>80</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FEDC67</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>80 à 90 %</sld:Name>
                    <sld:Title>80 à 90 %</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>80</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>90</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF8000</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>90 à 100 %</sld:Name>
                    <sld:Title>90 à 100 %</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>90</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>part_actifs_2554_dans_pop_2554_2009</ogc:PropertyName>
                                <ogc:Literal>100</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>