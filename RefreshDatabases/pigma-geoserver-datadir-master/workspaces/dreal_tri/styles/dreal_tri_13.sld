<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" 
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:ogc="http://www.opengis.net/ogc" 
xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>Dreal-TRI- Etablissements installations sensibles</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>

<!-- 1_Autres etablissement -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Autre etablissement</sld:Name>
<sld:Title>Autre etablissement</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
	<ogc:Or>
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>99</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>04</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>09</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
	    <ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>10</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
	</ogc:Or>
</ogc:Filter>

<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/autre_etab.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>


<!-- 2_Etab utile gestion crise -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Etab utile gestion crise</sld:Name>
<sld:Title>Etab utile gestion crise</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
	<ogc:Or>
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>01</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>05</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>06</ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>categorie</ogc:PropertyName>
		<ogc:Literal>07</ogc:Literal>
		</ogc:PropertyIsEqualTo>
	</ogc:Or>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/etab_utile_gestion_crise.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 3_Camping -->
<sld:Rule>
<MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Camping</sld:Name>
<sld:Title>Camping</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>1</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/camping.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 4_Etab enseignement -->
<sld:Rule>
<MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Etab enseignement</sld:Name>
<sld:Title>Etab enseignement</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>08</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/etab_enseigement.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 5_Etab hospitalier -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Etab hospitalier</sld:Name>
<sld:Title>Etab hospitalier</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>02</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/etab_hospitalier.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 6_Gare -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Gare</sld:Name>
<sld:Title>Gare</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>2</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/gare.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 7_Poste de transformation -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Poste de transformation</sld:Name>
<sld:Title>Poste de transformation</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>3</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/postes_transformations.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

<!-- 8_Installation eau -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Installation eau</sld:Name>
<sld:Title>Installation eau</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>4</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/eau.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

  <!-- 9_Etablissement penitentiaire -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Etablissement penitentiaire </sld:Name>
<sld:Title>Etablissement penitentiaire </sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>03</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/etab_penitentiaire.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>
  <!-- 10_Aeroport -->
<sld:Rule>
 <MinScaleDenominator>24999</MinScaleDenominator>
<sld:Name>Aéroport</sld:Name>
<sld:Title>Aéroport</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>categorie</ogc:PropertyName>
<ogc:Literal>10</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PointSymbolizer>
            <sld:Graphic>
              <sld:ExternalGraphic>
                <sld:OnlineResource
                  xlink:type="simple"
                  xlink:href="https://www.pigma.org/public/tri/aeroport.png"/>
                <sld:Format>image/png</sld:Format>
              </sld:ExternalGraphic>
              <sld:Size>12</sld:Size>
            </sld:Graphic>
          </sld:PointSymbolizer>
</sld:Rule>

</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>