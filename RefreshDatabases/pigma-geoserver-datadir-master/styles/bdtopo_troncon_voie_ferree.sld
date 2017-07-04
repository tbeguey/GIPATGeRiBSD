<?xml version="1.0" encoding="UTF-8"?>
<sld:UserStyle xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:Name>Default Styler</sld:Name>
  <sld:Title>AtlasStyler v1.8-r201109271751, Export-Mode: PRODUCTION</sld:Title>
  <sld:FeatureTypeStyle>
    <sld:Name>troncon_voie_ferree</sld:Name>
    <sld:FeatureTypeName>http://www.opengis.net/gml:TRONCON_VOIE_FERREE</sld:FeatureTypeName>
    <sld:Rule>
      <sld:Title>Funiculaire ou crémaillère</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Funiculaire ou crémaillère</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Principale</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Principale</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Transport urbain</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Transport urbain</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#009999</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Voie de service</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Voie de service</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Voie non exploitée</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Voie non exploitée</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke/>
      </sld:LineSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
  <sld:FeatureTypeStyle>
    <sld:Name>name</sld:Name>
    <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
    <sld:Rule>
      <sld:Title>Funiculaire ou crémaillère</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Funiculaire ou crémaillère</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Principale</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Principale</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Transport urbain</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Transport urbain</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#009999</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Voie de service</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Voie de service</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke>
          <sld:CssParameter name="stroke">#663300</sld:CssParameter>
          <sld:CssParameter name="stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
      </sld:LineSymbolizer>
    </sld:Rule>
    <sld:Rule>
      <sld:Title>Voie non exploitée</sld:Title>
      <ogc:Filter>
        <ogc:And>
          <ogc:Not>
            <ogc:Or>
              <ogc:PropertyIsNull>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
              </ogc:PropertyIsNull>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>NATURE</ogc:PropertyName>
                <ogc:Literal></ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:Or>
          </ogc:Not>
          <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>NATURE</ogc:PropertyName>
            <ogc:Literal>Voie non exploitée</ogc:Literal>
          </ogc:PropertyIsEqualTo>
        </ogc:And>
      </ogc:Filter>
      <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
      <sld:LineSymbolizer>
        <sld:Geometry>
          <ogc:PropertyName>the_geom</ogc:PropertyName>
        </sld:Geometry>
        <sld:Stroke/>
      </sld:LineSymbolizer>
    </sld:Rule>
  </sld:FeatureTypeStyle>
</sld:UserStyle>