<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>PNRLG - Sites de découvertes</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



<sld:Rule>
<sld:Name>Réserve Ornithologique du Teich et MNBA</sld:Name>
<sld:Title>Réserve Ornithologique du Teich et MNBA</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>denominati</ogc:PropertyName>
<ogc:Literal>Réserve Ornithologique du Teich et MNBA</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
 <PointSymbolizer>
   <Graphic>
     <Mark>
       <WellKnownName>star</WellKnownName>
       <Fill>
         <CssParameter name="fill">#FF4D00</CssParameter>
       </Fill>
     </Mark>
     <Size>20</Size>
   </Graphic>
 </PointSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Ecomusée de Marquèze</sld:Name>
<sld:Title>Ecomusée de Marquèze</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>denominati</ogc:PropertyName>
<ogc:Literal>Ecomusée de Marquèze</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
 <PointSymbolizer>
   <Graphic>
     <Mark>
       <WellKnownName>star</WellKnownName>
       <Fill>
         <CssParameter name="fill">#F0FC00</CssParameter>
       </Fill>
     </Mark>
     <Size>20</Size>
   </Graphic>
 </PointSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>Domaine de Certes</sld:Name>
<sld:Title>Domaine de Certes</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>denominati</ogc:PropertyName>
<ogc:Literal>Domaine de Certes</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
 <PointSymbolizer>
   <Graphic>
     <Mark>
       <WellKnownName>star</WellKnownName>
       <Fill>
         <CssParameter name="fill">#004EA0</CssParameter>
       </Fill>
     </Mark>
     <Size>20</Size>
   </Graphic>
 </PointSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>Domaine d'Hostens</sld:Name>
<sld:Title>Domaine d'Hostens</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>denominati</ogc:PropertyName>
<ogc:Literal>Domaine d'Hostens</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
 <PointSymbolizer>
   <Graphic>
     <Mark>
       <WellKnownName>star</WellKnownName>
       <Fill>
         <CssParameter name="fill">#4CE500</CssParameter>
       </Fill>
     </Mark>
     <Size>20</Size>
   </Graphic>
 </PointSymbolizer>
</sld:Rule>


</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>