<sld:StyledLayerDescriptor 
xmlns:sld="http://www.opengis.net/sld" version="1.0.0" 
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:ogc="http://www.opengis.net/ogc" 
xmlns:gml="http://www.opengis.net/gml"
xmlns:xlink="http://www.w3.org/1999/xlink">
    <sld:NamedLayer>
        <sld:Name>sdis:sdis24_carto_pt_eau</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>RI</sld:Name>
                    <sld:Title>Réserve Incendie</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>RI</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>LV</sld:Name>
                    <sld:Title>Lavoir(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>LV</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>BS</sld:Name>
                    <sld:Title>Bassin(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>BS</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>RR</sld:Name>
                    <sld:Title>Rivière</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>RR</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PI6</sld:Name>
                    <sld:Title>Poteau(x) d'incendie 65mm (Artémis = PI6)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PI6</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PI.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>CI</sld:Name>
                    <sld:Title>Citerne(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>CI</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>RS</sld:Name>
                    <sld:Title>Réservoir</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>RS</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/RS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>1</sld:Name>
                    <sld:Title>1</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>1</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FCCDE5</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>10</sld:Size>
                            <sld:Rotation>0</sld:Rotation>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>LC</sld:Name>
                    <sld:Title>Lac(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>LC</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PN</sld:Name>
                    <sld:Title>Point d'eau naturel</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PN</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>BI</sld:Name>
                    <sld:Title>Bouche(s) d'Incendie</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>BI</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                    <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/BI.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>RU</sld:Name>
                    <sld:Title>Ruisseau</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>RU</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>RV</sld:Name>
                    <sld:Title>Cours d'eau</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>RV</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>ET</sld:Name>
                    <sld:Title>Etang(s</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>ET</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PI</sld:Name>
                    <sld:Title>Poteau(x) d'incendie</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PI</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PI.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PR</sld:Name>
                    <sld:Title>Prise d'irrigation</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PR</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PI.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PS</sld:Name>
                    <sld:Title>Piscine(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PS</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>CN</sld:Name>
                    <sld:Title>Canal</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>CN</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PN.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PA</sld:Name>
                    <sld:Title>Puisard(s) d'Aspiration</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PA</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PA.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>MA</sld:Name>
                    <sld:Title>Mare(s)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>MA</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PS.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>PC</sld:Name>
                    <sld:Title>Prise Accessoire</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>nat_pt_eau</ogc:PropertyName>
                            <ogc:Literal>PC</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                       <Graphic>
                          <ExternalGraphic>
                            <OnlineResource
                              xlink:type="simple"
                            xlink:href="https://www.pigma.org/public/icons/PI.png"/>
                            <Format>image/png</Format>
                          </ExternalGraphic>
                          <Size>12</Size>
                        </Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>