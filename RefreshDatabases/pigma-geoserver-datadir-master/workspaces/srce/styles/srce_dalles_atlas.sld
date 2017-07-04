<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">  

 <sld:NamedLayer>
 <sld:Name>srce_dalles_atlas</sld:Name>
 <sld:UserStyle>
 <sld:FeatureTypeStyle>
 
 
 <!-- COMPARAISON DATE APPROBATION >> APPLATS DE COULEUR -->
 
 <sld:Rule>
 <sld:Name>srce_dalles_atlas</sld:Name>
 <sld:Title>Dalles Atlas SRCE</sld:Title>
 <sld:PolygonSymbolizer>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#f94e82</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.8</sld:CssParameter>
 <sld:CssParameter name="stroke-width">1</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 

 
<sld:Rule>
 <!-- <MaxScaleDenominator>100000</MaxScaleDenominator>-->
<sld:TextSymbolizer>
<sld:Label>
<ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">num_page</ogc:PropertyName>
</sld:Label><sld:Font>
<sld:CssParameter name="font-family">Arial</sld:CssParameter>
<sld:CssParameter name="font-size">11</sld:CssParameter>
<sld:CssParameter name="font-weight">bold</sld:CssParameter>
</sld:Font>
<sld:Fill>
<sld:CssParameter name="fill">#f94e82</sld:CssParameter>
</sld:Fill>
<sld:Halo><sld:Radius>1</sld:Radius>
<sld:Fill>
<sld:CssParameter name="fill">#ffffff</sld:CssParameter>
</sld:Fill>
</sld:Halo>
<VendorOption name="group">yes</VendorOption>
</sld:TextSymbolizer>
</sld:Rule>
 

 </sld:FeatureTypeStyle>
 </sld:UserStyle>
 </sld:NamedLayer>
 </sld:StyledLayerDescriptor>