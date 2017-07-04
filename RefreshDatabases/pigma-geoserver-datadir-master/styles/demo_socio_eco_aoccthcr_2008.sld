<?xml version="1.0" ?>
<sld:StyledLayerDescriptor version="1.0.0"
    xmlns:gml="http://www.opengis.net/gml"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:sld="http://www.opengis.net/sld"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
    <sld:NamedLayer>
        <sld:Name>demo_socio_eco:demo_socio_eco_actifs_athcr2008</sld:Name>
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
            <sld:CssParameter name="fill">#000000</sld:CssParameter>
            <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
          </sld:Fill>
        </sld:Halo>
        <sld:Fill>
          <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
        </sld:Fill>
      </sld:TextSymbolizer>
    </sld:Rule>
                <sld:Rule>
                    <sld:Name></sld:Name>
                    <sld:Title>Inférieur à 50%</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsLessThan>
                            <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                            <ogc:Literal>50</ogc:Literal>
                        </ogc:PropertyIsLessThan>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FEFEF1</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name></sld:Name>
                    <sld:Title>de 50 à 60%</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>50</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>60</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FBD9BF</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name></sld:Name>
                    <sld:Title>de 60 à 70%</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>60</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>70</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#E6B988</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name></sld:Name>
                    <sld:Title>de 70 à 80%</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>70</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                                <ogc:Literal>80</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#844A4A</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name></sld:Name>
                    <sld:Title>Supérieur à 80%</sld:Title>
                    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
                        <ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyName>txactifsocc15ansetplus_travaillant_hors_commune_residence</ogc:PropertyName>
                            <ogc:Literal>80</ogc:Literal>
                        </ogc:PropertyIsGreaterThanOrEqualTo>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#3A2323</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                            <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:NamedLayer>
</sld:StyledLayerDescriptor>