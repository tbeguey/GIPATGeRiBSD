<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>girnum:girondenumerique_adsl_apres_nrazo</sld:Name>
        <sld:UserStyle>
            <sld:FeatureTypeStyle>
                <sld:Rule>
                    <sld:Name>Inéligible à 512Kbit/s</sld:Name>
                    <sld:Title>Inéligible à 512Kbit/s</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>service</ogc:PropertyName>
                            <ogc:Literal>Inéligible à 512Kbit/s</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#C3C3C3</sld:CssParameter>
                            <CssParameter name="fill-opacity">0.7</CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>10Mbit/s et plus</sld:Name>
                    <sld:Title>10Mbit/s et plus</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>service</ogc:PropertyName>
                            <ogc:Literal>10Mbit/s et plus</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FF3E45</sld:CssParameter>
                            <CssParameter name="fill-opacity">0.7</CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>De 512Kbit/s inclus à 2Mbit/s exclus</sld:Name>
                    <sld:Title>De 512Kbit/s inclus à 2Mbit/s exclus</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>service</ogc:PropertyName>
                            <ogc:Literal>De 512Kbit/s inclus à 2Mbit/s exclus</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FCEC0F</sld:CssParameter>
                            <CssParameter name="fill-opacity">0.7</CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>De 2Mbit/s inclus à 10Mbit/s exclus</sld:Name>
                    <sld:Title>De 2Mbit/s inclus à 10Mbit/s exclus</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsEqualTo>
                            <ogc:PropertyName>service</ogc:PropertyName>
                            <ogc:Literal>De 2Mbit/s inclus à 10Mbit/s exclus</ogc:Literal>
                        </ogc:PropertyIsEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FFAB00</sld:CssParameter>
                            <CssParameter name="fill-opacity">0.7</CssParameter>
                        </sld:Fill>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>