<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">

<sld:NamedLayer>
<sld:Name>asp:asp_rpg2010</sld:Name>
<sld:UserStyle>

<sld:FeatureTypeStyle>



<sld:Rule>
<sld:Name>PAS D INFORMATION</sld:Name>
<sld:Title>PAS D INFORMATION</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>0</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill"></sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>BLE TENDRE</sld:Name>
<sld:Title>BLE TENDRE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>1</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFFF90</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>MAIS GRAIN ET ENSILAGE</sld:Name>
<sld:Title>MAIS GRAIN ET ENSILAGE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>2</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#00FF00</sld:CssParameter>
</sld:Fill></sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>ORGE</sld:Name>
<sld:Title>ORGE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>3</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#F0FF70</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>AUTRES CEREALES</sld:Name>
<sld:Title>AUTRES CEREALES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>4</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#DAEB00</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>COLZA</sld:Name>
<sld:Title>COLZA</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>5</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFECB0</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>TOURNESOL</sld:Name>
<sld:Title>TOURNESOL</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>6</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFFF00</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>AUTRES OLEAGINEUX</sld:Name>
<sld:Title>AUTRES OLEAGINEUX</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>7</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer><sld:Fill>
<sld:CssParameter name="fill">#FFC000</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>PROTEAGINEUX</sld:Name>
<sld:Title>PROTEAGINEUX</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>8</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#F0B400</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>




<sld:Rule>
<sld:Name>PLANTES A FIBRES</sld:Name>
<sld:Title>PLANTES A FIBRES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>9</ogc:Literal>
</ogc:PropertyIsEqualTo></ogc:Filter>
<sld:PolygonSymbolizer><sld:Fill>
<sld:CssParameter name="fill">#C09000</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>




<sld:Rule>
<sld:Name>SEMENCES</sld:Name>
<sld:Title>SEMENCES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>10</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#604800</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>GELS</sld:Name>
<sld:Title>GELS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>11</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#F0F0F0</sld:CssParameter></sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>GEL INDUSTRIEL</sld:Name>
<sld:Title>GEL INDUSTRIEL</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>12</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#B0B0B0</sld:CssParameter></sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>AUTRES GELS</sld:Name>
<sld:Title>AUTRES GELS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>13</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#D0D0D0</sld:CssParameter></sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>RIZ</sld:Name>
<sld:Title>RIZ</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>14</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#90B5FF</sld:CssParameter></sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>LEGUMINEUSES A GRAINS</sld:Name>
<sld:Title>LEGUMINEUSES A GRAINS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>15</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FFA080</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>FOURRAGE</sld:Name>
<sld:Title>FOURRAGE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>16</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#9FC75D</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>ESTIVES LANDES</sld:Name>
<sld:Title>ESTIVES LANDES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>17</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter><sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#B5E66B</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>PRAIRIES PERMANENTES</sld:Name>
<sld:Title>PRAIRIES PERMANENTES</sld:Title><ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>18</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#C0FF60</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>PRAIRIES TEMPORAIRES</sld:Name>
<sld:Title>PRAIRIES TEMPORAIRES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>19</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter><sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#E0FFB0</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>VERGERS</sld:Name>
<sld:Title>VERGERS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>20</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#FF0000</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>VIGNES</sld:Name>
<sld:Title>VIGNES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>21</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#E000E0</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>




<sld:Rule>
<sld:Name>FRUITS A COQUE</sld:Name>
<sld:Title>FRUITS A COQUE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>22</ogc:Literal>
</ogc:PropertyIsEqualTo></ogc:Filter>
<sld:PolygonSymbolizer><sld:Fill>
<sld:CssParameter name="fill">#008000</sld:CssParameter>
</sld:Fill></sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>OLIVIERS</sld:Name>
<sld:Title>OLIVIERS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>23</ogc:Literal>
</ogc:PropertyIsEqualTo></ogc:Filter>
<sld:PolygonSymbolizer><sld:Fill>
<sld:CssParameter name="fill">#A2A200</sld:CssParameter>
</sld:Fill></sld:PolygonSymbolizer>
</sld:Rule>


<sld:Rule>
<sld:Name>AUTRES CULTURES INDUSTRIELLES</sld:Name>
<sld:Title>AUTRES CULTURES INDUSTRIELLES</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>24</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#008080</sld:CssParameter>
<sld:CssParameter name="fill-opacity">1</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>

<sld:Rule>
<sld:Name>LEGUMES-FLEURS</sld:Name>
<sld:Title>LEGUMES-FLEURS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo><ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>25</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill><sld:CssParameter name="fill">#FFA0D0</sld:CssParameter></sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule><sld:Name>ARBORICULTURE</sld:Name>
<sld:Title>ARBORICULTURE</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>27</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter>
<sld:PolygonSymbolizer>
<sld:Fill>
<sld:CssParameter name="fill">#00B058</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



<sld:Rule>
<sld:Name>DIVERS</sld:Name>
<sld:Title>DIVERS</sld:Title>
<ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
<ogc:PropertyIsEqualTo>
<ogc:PropertyName>cult_maj</ogc:PropertyName>
<ogc:Literal>28</ogc:Literal>
</ogc:PropertyIsEqualTo>
</ogc:Filter><sld:PolygonSymbolizer>
<sld:Fill><sld:CssParameter name="fill">#800080</sld:CssParameter>
</sld:Fill>
</sld:PolygonSymbolizer>
</sld:Rule>



</sld:FeatureTypeStyle>
</sld:UserStyle>
</sld:NamedLayer>
</sld:StyledLayerDescriptor>