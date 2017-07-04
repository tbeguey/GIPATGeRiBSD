<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Dreal-TRI-Communes</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



<sld:Rule>

<sld:Name>Dreal-TRI-Communes</sld:Name>
<sld:Title>Dreal-TRI-Communes</sld:Title>

<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
<sld:CssParameter name="fill-opacity">0</sld:CssParameter>
</sld:Fill>
<sld:Stroke>
<sld:CssParameter name="stroke">#000000</sld:CssParameter>
</sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>

<sld:TextSymbolizer>
<sld:Label>
<ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">nom_com</ogc:PropertyName>
</sld:Label><sld:Font>
<sld:CssParameter name="font-family">Arial</sld:CssParameter>
<sld:CssParameter name="font-size">12</sld:CssParameter>
<sld:CssParameter name="font-weight">bold</sld:CssParameter>
</sld:Font>
<sld:Halo><sld:Radius>1.5</sld:Radius>
<sld:Fill>
<sld:CssParameter name="fill">#FFFFFF</sld:CssParameter>
</sld:Fill>
</sld:Halo>
<VendorOption name="group">yes</VendorOption>
</sld:TextSymbolizer>
</sld:Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>