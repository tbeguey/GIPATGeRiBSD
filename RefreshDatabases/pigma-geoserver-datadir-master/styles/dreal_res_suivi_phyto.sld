<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml"><sld:NamedLayer><sld:Name>dreal:dreal_res_suivi_phyto</sld:Name><sld:UserStyle><sld:FeatureTypeStyle><sld:Rule><sld:Name>ESU</sld:Name><sld:Title>eaux superficielles</sld:Title><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>eaux_sup_e</ogc:PropertyName><ogc:Literal>ESU</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><sld:PointSymbolizer><sld:Graphic><sld:Mark><sld:WellKnownName>circle</sld:WellKnownName><sld:Fill><sld:CssParameter name="fill">#8DD3C7</sld:CssParameter><sld:CssParameter name="fill-opacity">1</sld:CssParameter></sld:Fill></sld:Mark><sld:Size>10</sld:Size><sld:Rotation>0</sld:Rotation></sld:Graphic></sld:PointSymbolizer></sld:Rule><sld:Rule><sld:Name>ESO</sld:Name><sld:Title>eaux souterraines</sld:Title><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc"><ogc:PropertyIsEqualTo><ogc:PropertyName>eaux_sup_e</ogc:PropertyName><ogc:Literal>ESO</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter><sld:PointSymbolizer><sld:Graphic><sld:Mark><sld:WellKnownName>circle</sld:WellKnownName><sld:Fill><sld:CssParameter name="fill">#FFFF22</sld:CssParameter><sld:CssParameter name="fill-opacity">1</sld:CssParameter></sld:Fill></sld:Mark><sld:Size>10</sld:Size><sld:Rotation>0</sld:Rotation></sld:Graphic></sld:PointSymbolizer></sld:Rule></sld:FeatureTypeStyle></sld:UserStyle></sld:NamedLayer></sld:StyledLayerDescriptor>