<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
  <sld:Name>ars:ars_hopitaux</sld:Name>
    <sld:UserStyle>
       <sld:FeatureTypeStyle>
        <sld:Name>TEXT_LABEL</sld:Name>
        <sld:Title>TextRuleList</sld:Title>
        <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
        <sld:Rule>
          <sld:Name>DEFAULT</sld:Name>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:And>
                <ogc:PropertyIsEqualTo>
                  <ogc:Literal>LABEL_CLASS_ENABLED</ogc:Literal>
                  <ogc:Literal>LABEL_CLASS_ENABLED</ogc:Literal>
                </ogc:PropertyIsEqualTo>
                <ogc:PropertyIsEqualTo>
                  <ogc:Literal>1</ogc:Literal>
                  <ogc:Literal>1</ogc:Literal>
                </ogc:PropertyIsEqualTo>
              </ogc:And>
            </ogc:And>
          </ogc:Filter>
          <sld:MaxScaleDenominator>272989</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
             <sld:Label>
              <ogc:PropertyName>raison_sociale</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">12.0</sld:CssParameter>
              <sld:CssParameter name="font-style">bold</sld:CssParameter>
              <sld:CssParameter name="font-weight">normal</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:PointPlacement>
                <sld:AnchorPoint>
                  <sld:AnchorPointX>0.5</sld:AnchorPointX>
                  <sld:AnchorPointY>2</sld:AnchorPointY>
                </sld:AnchorPoint>
                <sld:Displacement>
                  <sld:DisplacementX>0</sld:DisplacementX>
                  <sld:DisplacementY>2</sld:DisplacementY>
                </sld:Displacement>
              </sld:PointPlacement>
            </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>1</sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
                <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#OOOOO0</sld:CssParameter>
            </sld:Fill>
           </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>Classe_530</sld:Name>
          <sld:Title>Ensemble des établissements de santé et médicaux-socio</sld:Title>
         <sld:PointSymbolizer>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>circle</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#F30000</sld:CssParameter>
                  <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
                </sld:Fill>
                <sld:Stroke>
                  <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                  <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
                  <sld:CssParameter name="stroke-width">1</sld:CssParameter>
                </sld:Stroke>
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