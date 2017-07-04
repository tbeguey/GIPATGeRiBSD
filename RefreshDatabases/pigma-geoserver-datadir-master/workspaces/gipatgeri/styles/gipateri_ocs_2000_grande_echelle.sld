<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>ocs_GIP_2009</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Tissu urbain dense</sld:Name>
                    <sld:Title>Tissu urbain dense</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1111</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#A80000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Tissu urbain individuel groupé</sld:Name>
                    <sld:Title>Tissu urbain individuel groupé</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1112</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E60000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Tissu urbain dispersé</sld:Name>
                    <sld:Title>Tissu urbain dispersé</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1121</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF5500</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Espace urbain individuel diffus</sld:Name>
                    <sld:Title>Espace urbain individuel diffus</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1122</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFAA00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Sièges d'exploitations agricoles, batimets agricoles isolés</sld:Name>
                    <sld:Title>Sièges d'exploitations agricoles, batimets agricoles isolés</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1123</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFBEBE</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Habitat touristique spécifique</sld:Name>
                    <sld:Title>Habitat touristique spécifique</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1124</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFAA00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>1</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Habitat collectif haut</sld:Name>
                    <sld:Title>Habitat collectif haut</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1125</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Emprises industrielles</sld:Name>
                    <sld:Title>Emprises industrielles</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1211</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#A80084</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Emprises commerciales</sld:Name>
                    <sld:Title>Emprises commerciales</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1212</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E600A9</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Cimetières</sld:Name>
                    <sld:Title>Cimetières</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1213</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#6E6E6E</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                            <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>15</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Emprises scolaires et/ou universitaires</sld:Name>
                    <sld:Title>Emprises scolaires et/ou universitaires</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1214</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Emprises hospitalières</sld:Name>
                    <sld:Title>Emprises hospitalières</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1215</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>x</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Autres emprises publiques</sld:Name>
                    <sld:Title>Autres emprises publiques</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1216</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>1</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Aire d'accueil des gens du voyage</sld:Name>
                    <sld:Title>Aire d'accueil des gens du voyage</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1217</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#C5FCBB</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Vacant urbain</sld:Name>
                    <sld:Title>Vacant urbain</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1218</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FAB3FC</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Axes routiers principaux, espaces associés</sld:Name>
                    <sld:Title>Axes routiers principaux, espaces associés</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1221</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#828282</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Axes ferroviaires principaux et espaces associés</sld:Name>
                    <sld:Title>Axes ferroviaires principaux et espaces associés</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1222</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#343434</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Parkings et principales places publiques</sld:Name>
                    <sld:Title>Parkings et principales places publiques</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1223</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#828282</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Ports de plaisance</sld:Name>
                    <sld:Title>Ports de plaisance</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1231</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#00A9E6</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer/>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Ecoles de voile</sld:Name>
                    <sld:Title>Ecoles de voile</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1232</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#C29ED7</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer/>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Ports de commerce</sld:Name>
                    <sld:Title>Ports de commerce</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1233</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#828282</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>11</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Autres ports</sld:Name>
                    <sld:Title>Autres ports</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1234</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#00A9E6</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>11</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Aéroports et aérodromes</sld:Name>
                    <sld:Title>Aéroports et aérodromes</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1240</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#CCCCCC</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Carrières</sld:Name>
                    <sld:Title>Carrières</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1311</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#828282</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Décharges</sld:Name>
                    <sld:Title>Décharges</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1321</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#B2B2B2</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Chantiers</sld:Name>
                    <sld:Title>Chantiers</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1330</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#B2B2B2</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Espaces verts urbains et périurbains publics ou privés</sld:Name>
                    <sld:Title>Espaces verts urbains et périurbains publics ou privés</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1411</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#00EB00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Jardins ouvriers</sld:Name>
                    <sld:Title>Jardins ouvriers</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1412</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#7AF5CA</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Campings, caravanings</sld:Name>
                    <sld:Title>Campings, caravanings</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1421</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#55FF00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>11</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#6E6E6E</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                            <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Golfs</sld:Name>
                    <sld:Title>Golfs</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1422</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#B4D79E</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#004C73</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>11</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Stades, équipements sportifs et équipements de loisir</sld:Name>
                    <sld:Title>Stades, équipements sportifs et équipements de loisir</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>1423</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#55FF00</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>11</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Cultures annuelles</sld:Name>
                    <sld:Title>Cultures annuelles</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2111</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFFBE</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Cultures florales et légumières</sld:Name>
                    <sld:Title>Cultures florales et légumières</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2112</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#D69DBC</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Terres arables irriguées</sld:Name>
                    <sld:Title>Terres arables irriguées</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2120</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFEBBE</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Vignobles</sld:Name>
                    <sld:Title>Vignobles</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2210</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#CD6699</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF73</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Vergers et petits fruits</sld:Name>
                    <sld:Title>Vergers et petits fruits</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2220</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#00E6A9</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#FFFF73</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Prairies</sld:Name>
                    <sld:Title>Prairies</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2310</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#A3FF73</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Surfaces en herbe non agricole</sld:Name>
                    <sld:Title>Surfaces en herbe non agricole</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2320</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#A3FF73</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>1</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Espaces agricoles en friche</sld:Name>
                    <sld:Title>Espaces agricoles en friche</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>2431</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFF73</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Forêts de feuillus</sld:Name>
                    <sld:Title>Forêts de feuillus</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3110</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#38A800</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Forêts de conifères</sld:Name>
                    <sld:Title>Forêts de conifères</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3120</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#267300</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Forêts mélangées</sld:Name>
                    <sld:Title>Forêts mélangées</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3130</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#38A800</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>cross</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#267300</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>12</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Pelouses et paturages naturels</sld:Name>
                    <sld:Title>Pelouses et paturages naturels</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3210</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Landes et broussailles</sld:Name>
                    <sld:Title>Landes et broussailles</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3220</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#A8A800</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>1</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Plages, sable</sld:Name>
                    <sld:Title>Plages, sable</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3311</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Dunes</sld:Name>
                    <sld:Title>Dunes</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3312</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>x</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#E6E600</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Roches nues</sld:Name>
                    <sld:Title>Roches nues</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3320</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#CCCCCC</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>6</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Végétation clairsemée</sld:Name>
                    <sld:Title>Végétation clairsemée</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3330</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E6E600</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>x</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#A8A800</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Zones incendiées</sld:Name>
                    <sld:Title>Zones incendiées</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>3340</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#4E4E4E</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>circle</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#686868</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>2</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Végétation de ceinture des bords des eaux</sld:Name>
                    <sld:Title>Végétation de ceinture des bords des eaux</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4111</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#C7D79E</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Tourbières</sld:Name>
                    <sld:Title>Tourbières</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4121</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#EEFCCF</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Schorre</sld:Name>
                    <sld:Title>Schorre</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4211</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#B4D79E</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Espaces endigués ou polders</sld:Name>
                    <sld:Title>Espaces endigués ou polders</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4212</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#73B2FF</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                    <sld:WellKnownName>x</sld:WellKnownName>
                                    <sld:Fill>
                                    <sld:CssParameter name="fill">#000000</sld:CssParameter>
                                    <sld:CssParameter name="fill-opacity">1.0</sld:CssParameter>
                                    </sld:Fill>
                                    </sld:Mark>
                                    <sld:Size>10</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Vasières et bancs de sable sans végétation</sld:Name>
                    <sld:Title>Vasières et bancs de sable sans végétation</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4231</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#CDF57A</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Herbiers marins à plantes vasculaires</sld:Name>
                    <sld:Title>Herbiers marins à plantes vasculaires</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>4232</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#D7D79E</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Cours et voies d'eau</sld:Name>
                    <sld:Title>Cours et voies d'eau</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>5110</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#0070FF</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Plans d'eau naturels</sld:Name>
                    <sld:Title>Plans d'eau naturels</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>5121</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#00C5FF</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Plans d'eau artificiels</sld:Name>
                    <sld:Title>Plans d'eau artificiels</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>5122</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#73B2FF</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Estuaires</sld:Name>
                    <sld:Title>Estuaires</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>5220</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#D7F8FC</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
				<sld:MaxScaleDenominator>49999</sld:MaxScaleDenominator>
                    <sld:Name>Mers et océans</sld:Name>
                    <sld:Title>Mers et océans</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>code00niv4</ogc:PropertyName>
                            <ogc:Literal>5230</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    
                    <sld:MaxScaleDenominator>3000000</sld:MaxScaleDenominator>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#004DA8</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>