<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml"><sld:NamedLayer>
<sld:Name>ign:ign_bdparcellaire_sections</sld:Name><sld:UserStyle>
<sld:FeatureTypeStyle><sld:Rule><sld:Name>Classe_401</sld:Name>
<sld:Title>ign_bdparcellaire_sections</sld:Title>
      <sld:MaxScaleDenominator>25000</sld:MaxScaleDenominator>
  <sld:PolygonSymbolizer>
<sld:Fill><sld:CssParameter name="fill">#406DF6</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0</sld:CssParameter></sld:Fill>
<sld:Stroke><sld:CssParameter name="stroke">#406DF6</sld:CssParameter>
<sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
<sld:CssParameter name="stroke-width">1</sld:CssParameter></sld:Stroke>
</sld:PolygonSymbolizer><sld:TextSymbolizer>
 <Geometry>
          <ogc:Function name="centroid">
          <ogc:PropertyName>the_geom</ogc:PropertyName>
          </ogc:Function>
          </Geometry> 
<sld:Label><ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">section
</ogc:PropertyName></sld:Label><sld:Font>                            <sld:CssParameter name="font-family">Arial</sld:CssParameter><sld:CssParameter name="font-size">12</sld:CssParameter></sld:Font><sld:Fill><sld:CssParameter name="fill">#406DF6</sld:CssParameter></sld:Fill></sld:TextSymbolizer></sld:Rule></sld:FeatureTypeStyle></sld:UserStyle></sld:NamedLayer></sld:StyledLayerDescriptor>