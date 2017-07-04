<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" 
xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" 
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>sdis:sdis_paicultureetloisirs64</sld:Name>
        <sld:UserStyle>
            <sld:Name>sdis:sdis_paicultureetloisirs64</sld:Name>
            <sld:Title>sdis:sdis_paicultureetloisirs64_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>sdis:sdis_paicultureetloisirs64</sld:Name>
                <sld:Rule>
                    <sld:Name>Construction</sld:Name>
                    <sld:Title>Construction</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Construction</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#8DD3C7</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Camping</sld:Name>
                    <sld:Title>Camping</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Camping</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                     <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="http://cartogip.fr/temp_ico_pigma/camping.png" />
                <Format>image/png</Format>
              </ExternalGraphic>
              <Size>16</Size>
            </Graphic>
          </PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>NR</sld:Name>
                    <sld:Title>NR</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>NR</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#BEBADA</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Autre</sld:Name>
                    <sld:Title>Autre</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Autre</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FB8072</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Habitation troglodytique</sld:Name>
                    <sld:Title>Habitation troglodytique</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Habitation troglodytique</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#80B1D3</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Dolmen</sld:Name>
                    <sld:Title>Dolmen</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Dolmen</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FDB462</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Parc de Loisirs</sld:Name>
                    <sld:Title>Parc de Loisirs</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Parc de Loisirs</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#B3DE69</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Parc des expositions</sld:Name>
                    <sld:Title>Parc des expositions</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Parc des expositions</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FCCDE5</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Refuge</sld:Name>
                    <sld:Title>Refuge</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Refuge</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#D9D9D9</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Espace public</sld:Name>
                    <sld:Title>Espace public</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Espace public</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#BC80BD</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Digue</sld:Name>
                    <sld:Title>Digue</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Digue</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#CCEBC5</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Village de vacances</sld:Name>
                    <sld:Title>Village de vacances</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Village de vacances</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FFED6F</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Parc zoologique</sld:Name>
                    <sld:Title>Parc zoologique</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Parc zoologique</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#397F33</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Parc de loisirs</sld:Name>
                    <sld:Title>Parc de loisirs</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Parc de loisirs</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#C71050</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Menhir</sld:Name>
                    <sld:Title>Menhir</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Menhir</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#879B64</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Gite</sld:Name>
                    <sld:Title>Gite</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Gite</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#D05046</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Monument</sld:Name>
                    <sld:Title>Monument</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Monument</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#BB9838</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Vestiges archéologiques</sld:Name>
                    <sld:Title>Vestiges archéologiques</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Vestiges archéologiques</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#F257D7</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Musée</sld:Name>
                    <sld:Title>Musée</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Musée</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#DCBA6A</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Maison du parc</sld:Name>
                    <sld:Title>Maison du parc</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nature</ogc:PropertyName>
                            <ogc:Literal>Maison du parc</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#25045D</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>