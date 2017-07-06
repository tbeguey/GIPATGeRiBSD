<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>demo_socio_eco:demo_socio_eco_part_des_2554_dans_pop_totale_2009</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle> <sld:Rule>
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
          <sld:Name>0 à 35 %</sld:Name>
          <sld:Title>0 à 35 %</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>0</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>35</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEF04B</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>35 à 40 %</sld:Name>
          <sld:Title>35 à 40 %</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>35</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EBB847</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>40 à 45 %</sld:Name>
          <sld:Title>40 à 45 %</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>45</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D88143</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>45 à 50 %</sld:Name>
          <sld:Title>45 à 50 %</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>45</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThan>
                <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
                <ogc:Literal>50</ogc:Literal>
              </ogc:PropertyIsLessThan>
            </ogc:And>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>&gt;= 50 %</sld:Name>
          <sld:Title>&gt;= 50 %</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyName>part_2554_dans_pop_totale_2009</ogc:PropertyName>
              <ogc:Literal>50</ogc:Literal>
            </ogc:PropertyIsGreaterThanOrEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B3133C</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>