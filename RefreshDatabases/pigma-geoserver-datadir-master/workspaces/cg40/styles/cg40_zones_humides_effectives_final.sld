<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
<sld:NamedLayer>
<sld:Name>Zones humides effectives</sld:Name>
<sld:UserStyle>
<sld:FeatureTypeStyle>

<sld:Rule>
<sld:Name>Bordures de plans d eau (lacs, etangs)</sld:Name>
<sld:Title>Bordures de plans d eau (lacs, etangs)</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Bordures de plans d eau (lacs, etangs)</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#fe0000</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#fe0000</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Espaces landicoles humides et depressions humides du plateau landais</sld:Name>
<sld:Title>Espaces landicoles humides et depressions humides du plateau landais</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Espaces landicoles humides et depressions humides du plateau landais</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#00fefe</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#00fefe</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Marais amenages</sld:Name>
<sld:Title>Marais aménagés</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Marais amenages</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#c0c0c0</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#c0c0c0</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Vasieres et pres sales, vases salees vegetalisees</sld:Name>
<sld:Title>Vasieres et prés salés, vases salées vegetalisées</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Vasieres et pres sales, vases salees vegetalisees</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#ff00ff</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#ff00ff</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>Zone humide d arriere dune</sld:Name>
<sld:Title>Zone humide d'arrière dune</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zone humide d arriere dune</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#010101</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#010101</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Zones humides artificielles</sld:Name>
<sld:Title>Zones humides artificielles</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zones humides artificielles</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#8180ff</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#8180ff</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Zones humides associees au courant</sld:Name>
<sld:Title>Zones humides associées au courant</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zones humides associees au courant</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#008001</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#008001</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Zones humides associees aux cours d eau de tete de bassin</sld:Name>
<sld:Title>Zones humides associées aux cours d'eau de tete de bassin</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zones humides associees aux cours d eau de tete de bassin</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#810081</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#810081</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>Zones humides associees aux cours d eau des zones aval</sld:Name>
<sld:Title>Zones humides associées aux cours d'eau des zones aval</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zones humides associees aux cours d eau des zones aval</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#01ff01</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#01ff01</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>Zones humides associees aux cours d eau intermediaires</sld:Name>
<sld:Title>Zones humides associées aux cours d'eau intermediaires</sld:Title>
    <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
        <ogc:PropertyIsEqualTo>
            <ogc:PropertyName>fma_zhetyp</ogc:PropertyName>
             <ogc:Literal>Zones humides associees aux cours d eau intermediaires</ogc:Literal>
        </ogc:PropertyIsEqualTo>
    </ogc:Filter>
<sld:PolygonSymbolizer>
        <sld:Fill>
                <sld:GraphicFill>
                        <sld:Graphic>
                                <sld:Mark>
                    <sld:WellKnownName>shape://dot</sld:WellKnownName>
                     <sld:Stroke>
                        <sld:CssParameter name="stroke">#fefe00</sld:CssParameter>
                         <sld:CssParameter name="stroke-width">2</sld:CssParameter >
                      </sld:Stroke>
                  </sld:Mark>
                  <sld:Size>4</sld:Size>
                        </sld:Graphic>
                </sld:GraphicFill>
        </sld:Fill>
        <sld:Stroke>
                <sld:CssParameter name="Stroke">#fefe00</sld:CssParameter>
                <sld:CssParameter name="Stroke-width">1.5</sld:CssParameter>
        </sld:Stroke>
</sld:PolygonSymbolizer>
</sld:Rule>




</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>