<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Barrages Nouvelle Aquitaine</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>

<!-- Classe A soumis a PPI !-->
<sld:Rule>

<sld:Name>Classe A soumis a PPI</sld:Name>
<sld:Title>Classe A soumis a PPI</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<sld:And>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>classe</ogc:PropertyName>
<ogc:Literal>A</ogc:Literal>
</ogc:PropertyIsEqualTo>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ppi</ogc:PropertyName>
<ogc:Literal>oui</ogc:Literal>
</ogc:PropertyIsEqualTo>
</sld:And>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>square</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#fdbe6f</sld:CssParameter>
                </sld:Fill>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>0</sld:Rotation>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>


<!-- Classe A sans PPI-->
<sld:Rule>
<sld:Name>Classe A sans PPI</sld:Name>
<sld:Title>Classe A sans PPI</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<sld:And>
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>classe</ogc:PropertyName>
<ogc:Literal>A</ogc:Literal>
</ogc:PropertyIsEqualTo>

<ogc:PropertyIsEqualTo>
<ogc:PropertyName>ppi</ogc:PropertyName>
<ogc:Literal>non</ogc:Literal>
</ogc:PropertyIsEqualTo>
</sld:And>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>square</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#1f78b4</sld:CssParameter>
                </sld:Fill>
              </sld:Mark>
              <sld:Size>15</sld:Size>
              <sld:Rotation>0</sld:Rotation>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- B !-->

<sld:Rule>
<sld:Name>Classe B</sld:Name>
<sld:Title>Classe B</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>classe</ogc:PropertyName>
<ogc:Literal>B</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>triangle</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#1f78b4</sld:CssParameter>
                </sld:Fill>
              </sld:Mark>
              <sld:Size>10</sld:Size>
              <sld:Rotation>0</sld:Rotation>
            </sld:Graphic>
  </sld:PointSymbolizer>
</sld:Rule>


<!-- C !-->

<sld:Rule>
<sld:Name>Classe C</sld:Name>
<sld:Title>Classe C</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>classe</ogc:PropertyName>
<ogc:Literal>C</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#1f78b4</sld:CssParameter>
                </sld:Fill>
              </sld:Mark>
              <sld:Size>10</sld:Size>
              <sld:Rotation>0</sld:Rotation>
            </sld:Graphic>
  </sld:PointSymbolizer>
</sld:Rule>


</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>