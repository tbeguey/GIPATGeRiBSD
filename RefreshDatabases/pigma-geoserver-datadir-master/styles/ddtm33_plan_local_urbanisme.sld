<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml"><sld:NamedLayer>
  <sld:Name>ddt24:ddt24_plu_zonage_dordogne</sld:Name>
  <sld:UserStyle><sld:FeatureTypeStyle><sld:Rule><sld:Name>Classe_521</sld:Name><sld:Title>plu_zonage
    </sld:Title><sld:MaxScaleDenominator>50000</sld:MaxScaleDenominator>
    <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#808080
      </sld:CssParameter><sld:CssParameter name="fill-opacity">0</sld:CssParameter>
      </sld:Fill><sld:Stroke><sld:CssParameter name="stroke">#460092</sld:CssParameter>
      <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
      <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
      </sld:Stroke></sld:PolygonSymbolizer>
    <sld:TextSymbolizer>
        <ogc:Function name="centroid">
          <ogc:PropertyName>the_geom</ogc:PropertyName>
          </ogc:Function>
    <sld:Label><ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">typezone</ogc:PropertyName></sld:Label><sld:Font><sld:CssParameter name="font-size">12</sld:CssParameter></sld:Font><sld:Halo><sld:Radius>1</sld:Radius><sld:Fill><sld:CssParameter name="fill">#FFFFFF</sld:CssParameter></sld:Fill></sld:Halo><sld:Fill><sld:CssParameter name="fill">#470093</sld:CssParameter></sld:Fill></sld:TextSymbolizer></sld:Rule></sld:FeatureTypeStyle></sld:UserStyle></sld:NamedLayer></sld:StyledLayerDescriptor>