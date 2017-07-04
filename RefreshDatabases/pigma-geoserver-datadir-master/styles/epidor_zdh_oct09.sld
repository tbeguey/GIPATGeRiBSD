<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>epidor:epidor_zdh_50000_fev_2012</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>7 - Marais, roselières, tourbières, landes et mégaphorbiaies</sld:Name>
                    <sld:Title>7 - Marais, roselières, tourbières, landes et mégaphorbiaies</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>7 - Marais, roselières, tourbières, landes et mégaphorbiaies</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#630158</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>3 - Zones humides urbanisées</sld:Name>
                    <sld:Title>3 - Zones humides urbanisées</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>3 - Zones humides urbanisées</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>6 - Prairies humides</sld:Name>
                    <sld:Title>6 - Prairies humides</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>6 - Prairies humides</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#F7F021</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>4 - Plans d'eau</sld:Name>
                    <sld:Title>4 - Plans d'eau</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>4 - Plans d'eau</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#1FA7D1</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>8 - Mosaïques d'entités de moins de 1 Ha</sld:Name>
                    <sld:Title>8 - Mosaïques d'entités de moins de 1 Ha</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>8 - Mosaïques d'entités de moins de 1 Ha</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF60B0</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>5 - Boisements humides</sld:Name>
                    <sld:Title>5 - Boisements humides</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>5 - Boisements humides</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#086731</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>0 - Eaux courantes &amp; annexes hydrauliques (exclues)</sld:Name>
                    <sld:Title>0 - Eaux courantes &amp; annexes hydrauliques (exclues)</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>0 - Eaux courantes &amp; annexes hydrauliques (exclues)</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#B3DE69</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>2 - Boisements artificiels - plantations</sld:Name>
                    <sld:Title>2 - Boisements artificiels - plantations</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>2 - Boisements artificiels - plantations</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#95C511</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>1 - Terres arables</sld:Name>
                    <sld:Title>1 - Terres arables</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>regpmts_pr</ogc:PropertyName>
                            <ogc:Literal>1 - Terres arables</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E56D0A</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.6</sld:CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>