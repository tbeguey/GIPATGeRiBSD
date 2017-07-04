<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">  

 <sld:NamedLayer>
 <sld:Name>urbanisme:urbanisme_suivi_urba</sld:Name>
 <sld:UserStyle>
 <sld:FeatureTypeStyle>
 
 
 <!-- COMPARAISON DATE APPROBATION >> APPLATS DE COULEUR -->
 
 <sld:Rule>
 <sld:Name>MEME DATE</sld:Name>
 <sld:Title>MEME DATE</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>comparaison_date_appro</ogc:PropertyName>
 <ogc:Literal>*BON*</ogc:Literal></ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#8e7bd4</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#000000</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
 <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 
 <sld:Rule>
 <sld:Name>DATE SUDOCUH PLUS RECENTE</sld:Name>
 <sld:Title>DATE SUDOCUH PLUS RECENTE</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>comparaison_date_appro</ogc:PropertyName>
 <ogc:Literal>*SUDOCUH PLUS RECENT*</ogc:Literal></ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#F4A460</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#000000</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
 <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 
 
 <sld:Rule>
 <sld:Name>DATE SUDOCUH MOINS RECENTE</sld:Name>
 <sld:Title>DATE SUDOCUH MOINS RECENTE</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>comparaison_date_appro</ogc:PropertyName>
 <ogc:Literal>*SUDOCUH MOINS RECENT*</ogc:Literal></ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#e8c7e4</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#000000</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
 <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 
 <sld:Rule>
 <sld:Name>PAS DE DATE SUDOCUH</sld:Name>
 <sld:Title>PAS DE DATE SUDOCUH</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>comparaison_date_appro</ogc:PropertyName>
 <ogc:Literal>*SANS DATE SUDOCUH*</ogc:Literal>
 </ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#DEDEDE</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#000000</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
 <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 
 <sld:Rule>
 <sld:Name>PAS DE DOCUMENT INTEGRE</sld:Name>
 <sld:Title>PAS DE DOCUMENT INTEGRE</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>comparaison_date_appro</ogc:PropertyName>
 <ogc:Literal>*PAS DE DU*</ogc:Literal>
 </ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
 <sld:Fill>
 <sld:CssParameter name="fill">#E51900</sld:CssParameter>
 <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
 </sld:Fill>
 <sld:Stroke>
 <sld:CssParameter name="stroke">#000000</sld:CssParameter>
 <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
 <sld:CssParameter name="stroke-width">0.5</sld:CssParameter>
 </sld:Stroke>
 </sld:PolygonSymbolizer>
 </sld:Rule>
 
 

 
 <!--DOCUMENT EN VIGUEUR >> HACHURES, POINTILLES 
 
 
<sld:Rule>
 <sld:Name>CC</sld:Name>
 <sld:Title>CC</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>doc_en_vigueur</ogc:PropertyName>
 <ogc:Literal>*CC*</ogc:Literal>
 </ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://vertline</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
              <sld:CssParameter name="stroke-opacity">0.5</sld:CssParameter>
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>8</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#000000</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">0.25</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
 </sld:Rule>
 
<sld:Rule>
 <sld:Name>PLU-POS</sld:Name>
 <sld:Title>PLU</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>doc_en_vigueur</ogc:PropertyName>
 <ogc:Literal>*PLU*</ogc:Literal>
 </ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://horline</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">##000000</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">1</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#000000</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">0.25</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>
 
<sld:Rule>
 <sld:Name>PLU-POS</sld:Name>
 <sld:Title>POS</sld:Title>
 <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
 <ogc:PropertyIsLike wildCard="*" singleChar="." escape="!">
 <ogc:PropertyName>doc_en_vigueur</ogc:PropertyName>
 <ogc:Literal>*POS*</ogc:Literal>
 </ogc:PropertyIsLike>
 </ogc:Filter>
 <sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://horline</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#000000</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">1</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#000000</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">0.25</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
 </sld:Rule>
... -->

 
<sld:Rule>
<MaxScaleDenominator>100000</MaxScaleDenominator>
<sld:TextSymbolizer>
<sld:Label>
<ogc:PropertyName xmlns:ogc="http://www.opengis.net/ogc">etiquette</ogc:PropertyName>
</sld:Label><sld:Font>
<sld:CssParameter name="font-family">Arial</sld:CssParameter>
<sld:CssParameter name="font-size">11</sld:CssParameter>
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