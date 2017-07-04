<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">  

 <sld:NamedLayer>
 <sld:Name>sdis_47_salle_ds_fetes</sld:Name>
 <sld:UserStyle>
 <sld:FeatureTypeStyle>
 
 
 
 <sld:Rule>
 <sld:Name>sdis_47_salle_ds_fetes</sld:Name>
 <sld:Title>SDIS 47-ERP-Salles des Fêtes</sld:Title>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#FF530D</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#FF530D</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">1</sld:CssParameter>
 <sld:CssParameter name="stroke-width">1</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
  
<sld:Rule>
<sld:MinScaleDenominator>100</sld:MinScaleDenominator>
<sld:MaxScaleDenominator>20000</sld:MaxScaleDenominator>
<sld:TextSymbolizer>
<sld:Label>
<ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">sdis47_nom</ogc:PropertyName>
</sld:Label><sld:Font>
<sld:CssParameter name="font-family">Arial</sld:CssParameter>
<sld:CssParameter name="font-size">11</sld:CssParameter>
<sld:CssParameter name="font-weight">bold</sld:CssParameter>
 <sld:CssParameter name="font-color">#FF530D</sld:CssParameter>
</sld:Font>
<sld:Halo><sld:Radius>1.5</sld:Radius>
<sld:Fill>
<sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
</sld:Fill>
</sld:Halo>
<sld:VendorOption name="autoWrap">60</sld:VendorOption>
<sld:VendorOption name="group">yes</sld:VendorOption>
<sld:VendorOption name="spaceAround">10</sld:VendorOption>
</sld:TextSymbolizer>
</sld:Rule>


 </sld:FeatureTypeStyle>
 </sld:UserStyle>
 </sld:NamedLayer>
 </sld:StyledLayerDescriptor>