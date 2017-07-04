<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml"><sld:NamedLayer><sld:Name>ign:ign_bdtopo_cantons</sld:Name><sld:UserStyle><sld:FeatureTypeStyle><sld:Rule><sld:Name>Classe_1718</sld:Name><sld:Title>Sans titre 1718</sld:Title><sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#885E5E</sld:CssParameter><sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill><sld:Stroke><sld:CssParameter name="stroke">#000000</sld:CssParameter><sld:CssParameter name="stroke-opacity">1</sld:CssParameter><sld:CssParameter name="stroke-width">1</sld:CssParameter><sld:CssParameter name="stroke-dasharray">4 4</sld:CssParameter></sld:Stroke></sld:PolygonSymbolizer>
  <sld:MaxScaleDenominator>500000</sld:MaxScaleDenominator>
  <sld:TextSymbolizer>
     <Geometry>
          <ogc:Function name="centroid">
          <ogc:PropertyName>the_geom</ogc:PropertyName>
          </ogc:Function>
          </Geometry> 
    <sld:Label><ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom</ogc:PropertyName></sld:Label>
    <sld:Font><sld:CssParameter name="font-size">10</sld:CssParameter>
      <sld:CssParameter name="font-weight">bold</sld:CssParameter></sld:Font>
   <sld:LabelPlacement>
              <sld:PointPlacement>
                <sld:AnchorPoint>
                  <sld:AnchorPointX>-0.5</sld:AnchorPointX>
                  <sld:AnchorPointY>-0.5</sld:AnchorPointY>
                </sld:AnchorPoint>
                <sld:Displacement>
                  <sld:DisplacementX>0.0</sld:DisplacementX>
                  <sld:DisplacementY>0.0</sld:DisplacementY>
                </sld:Displacement>
              </sld:PointPlacement>
            </sld:LabelPlacement>
  </sld:TextSymbolizer></sld:Rule></sld:FeatureTypeStyle></sld:UserStyle></sld:NamedLayer></sld:StyledLayerDescriptor>