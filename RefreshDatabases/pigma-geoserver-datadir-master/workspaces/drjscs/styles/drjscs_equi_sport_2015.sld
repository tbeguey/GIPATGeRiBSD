<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
    <sld:NamedLayer>
        <sld:Name>drjscs:drjscs_equipements_sportifs</sld:Name>
        <sld:UserStyle>
            <sld:Name>drjscs:drjscs_equipements_sportifs</sld:Name>
            <sld:Title>drjscs:drjscs_equipements_sportifs_classification</sld:Title>
            <sld:FeatureTypeStyle>
                <sld:Name>drjscs:drjscs_equipements_sportifs</sld:Name>
                
        <!-- 1-->             
                <sld:Rule>
                    <sld:Name>Bassin de natation</sld:Name>
                    <sld:Title>Bassin de natation</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Bassin de natation</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#1d54ec</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>

        <!-- 2--> 
                <sld:Rule>
                    <sld:Name>Skate park et vélo Freestyle</sld:Name>
                    <sld:Title>Skate park et vélo Freestyle</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Skate park et vélo Freestyle</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ff0000</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 3--> 
                <sld:Rule>
                    <sld:Name>Equipement et piste de ski</sld:Name>
                    <sld:Title>Equipement et piste de ski</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Equipement et piste de ski</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#4A6DC1</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        
        
        <!-- 4--> 
                <sld:Rule>
                    <sld:Name>Boulodrome</sld:Name>
                    <sld:Title>Boulodrome</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Boulodrome</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        
        
        <!-- 5--> 
                <sld:Rule>
                    <sld:Name>Parcours de golf</sld:Name>
                    <sld:Title>Parcours de golf</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Parcours de golf</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#218397</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 6--> 
                <sld:Rule>
                    <sld:Name>Site de modélisme</sld:Name>
                    <sld:Title>Site de modélisme</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Site de modélisme</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#D56D74</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 7--> 
                <sld:Rule>
                    <sld:Name>Salle multisports</sld:Name>
                    <sld:Title>Salle multisports</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Salle multisports</ogc:Literal>
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
        
        
        
        
        <!-- 8--> 
                <sld:Rule>
                    <sld:Name>Bowling</sld:Name>
                    <sld:Title>Bowling</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Bowling</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#7f6494</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 9--> 
                <sld:Rule>
                    <sld:Name>Equipement de cyclisme</sld:Name>
                    <sld:Title>Equipement de cyclisme</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Equipement de cyclisme</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#DF49E7</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 10--> 
                <sld:Rule>
                    <sld:Name>Divers équipements Sports de nature</sld:Name>
                    <sld:Title>Divers équipements Sports de nature</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Divers équipements Sports de nature</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#7ce5b8</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 11--> 
                <sld:Rule>
                    <sld:Name>Equipement d'athlétisme</sld:Name>
                    <sld:Title>Equipement d'athlétisme</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Equipement d'athlétisme</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ee3939</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 12--> 
                <sld:Rule>
                    <sld:Name>Parcours sportif/santé</sld:Name>
                    <sld:Title>Parcours sportif/santé</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Parcours sportif/santé</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#c79940</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        
        
        <!-- 13--> 
                <sld:Rule>
                    <sld:Name>Salle de combat</sld:Name>
                    <sld:Title>Salle de combat</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Salle de combat</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#2200ff</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        
        
        <!-- 14--> 
                <sld:Rule>
                    <sld:Name>Equipement d'activités de forme et de santé</sld:Name>
                    <sld:Title>Equipement d'activités de forme et de santé</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Equipement d'activités de forme et de santé</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#315422</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
                
        <!-- 15--> 
                <sld:Rule>
                    <sld:Name>Salle ou terrain spécialisé</sld:Name>
                    <sld:Title>Salle ou terrain spécialisé</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Salle ou terrain spécialisé</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ffc4fa</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
                
        <!-- 16--> 
                <sld:Rule>
                    <sld:Name>Divers équipements</sld:Name>
                    <sld:Title>Divers équipements</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Divers équipements</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#bababa</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 17--> 
                <sld:Rule>
                    <sld:Name>Plateau EPS</sld:Name>
                    <sld:Title>Plateau EPS</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Plateau EPS</ogc:Literal>
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
        
        <!-- 18--> 
                <sld:Rule>
                    <sld:Name>Terrain extérieur de petits jeux collectifs</sld:Name>
                    <sld:Title>Terrain extérieur de petits jeux collectifs</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Terrain extérieur de petits jeux collectifs</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#66163E</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 19--> 
                <sld:Rule>
                    <sld:Name>Terrain de grands jeux</sld:Name>
                    <sld:Title>Terrain de grands jeux</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Terrain de grands jeux</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#00d2ff</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 20--> 
                <sld:Rule>
                    <sld:Name>Structure Artificielle d'Escalade</sld:Name>
                    <sld:Title>Structure Artificielle d'Escalade</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Structure Artificielle d'Escalade</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ffa700</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        

        <!-- 21--> 
                <sld:Rule>
                    <sld:Name>Court de tennis</sld:Name>
                    <sld:Title>Court de tennis</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Court de tennis</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#f2dd0d</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 22--> 
                <sld:Rule>
                    <sld:Name>Site d'activités aériennes</sld:Name>
                    <sld:Title>Site d'activités aériennes</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Site d'activités aériennes</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#767676</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        
        <!-- 23--> 
                <sld:Rule>
                    <sld:Name>Plaine de jeux</sld:Name>
                    <sld:Title>Plaine de jeux</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Plaine de jeux</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#039030</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 24--> 
                <sld:Rule>
                    <sld:Name>Circuit/piste de sports mécaniques</sld:Name>
                    <sld:Title>Circuit/piste de sports mécaniques</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Circuit/piste de sports mécaniques</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#5779E6</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 25--> 
                <sld:Rule>
                    <sld:Name>Aire de sports de glaces</sld:Name>
                    <sld:Title>Aire de sports de glaces</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Aire de sports de glaces</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                                </sld:Fill>
              <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
              </Stroke>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 26--> 
                <sld:Rule>
                    <sld:Name>Pas de tir</sld:Name>
                    <sld:Title>Pas de tir</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Pas de tir</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#E5F3AE</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 27--> 
                <sld:Rule>
                    <sld:Name>Mur et fronton</sld:Name>
                    <sld:Title>Mur et fronton</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Mur et fronton</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#ab501e</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 28--> 
                <sld:Rule>
                    <sld:Name>Equipement équestre</sld:Name>
                    <sld:Title>Equipement équestre</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Equipement équestre</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#2EFFB0</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 29--> 
                <sld:Rule>
                    <sld:Name>Site d'activités aquatiques et nautiques</sld:Name>
                    <sld:Title>Site d'activités aquatiques et nautiques</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Site d'activités aquatiques et nautiques</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#3789E5</sld:CssParameter>
                                </sld:Fill>
                            </sld:Mark>
                            <sld:Size>
                                <ogc:Literal>10.0</ogc:Literal>
                            </sld:Size>
                        </sld:Graphic>
                    </sld:PointSymbolizer>
                </sld:Rule>
        
        <!-- 30--> 
                <sld:Rule>
                    <sld:Name>Salle non spécialisée</sld:Name>
                    <sld:Title>Salle non spécialisée</sld:Title>
                    <ogc:Filter>
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>famillefic</ogc:PropertyName>
                            <ogc:Literal>Salle non spécialisée</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PointSymbolizer>
                        <sld:Graphic>
                            <sld:Mark>
                                <sld:WellKnownName>circle</sld:WellKnownName>
                                <sld:Fill>
                                    <sld:CssParameter name="fill">#b2a16c</sld:CssParameter>
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