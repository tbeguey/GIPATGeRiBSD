<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml">
  <sld:NamedLayer>
    <sld:Name>airaq:orecca_conso_elec_com</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule>
          <sld:Name>De 10.000.000 à 30.000.000 kWh/km²</sld:Name>
          <sld:Title>De 10.000.000 à 30.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 10.000.000 à 30.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C00000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 5.000.000 à 10.000.000 kWh/km²</sld:Name>
          <sld:Title>De 5.000.000 à 10.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 5.000.000 à 10.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D02101</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 3.000.000 à 5.000.000 kWh/km²</sld:Name>
          <sld:Title>De 3.000.000 à 5.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 3.000.000 à 5.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D04000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 2.000.000 à 3.000.000 kWh/km²</sld:Name>
          <sld:Title>De 2.000.000 à 3.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 2.000.000 à 3.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E06000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 1.500.000 à 2.000.000 kWh/km²</sld:Name>
          <sld:Title>De 1.500.000 à 2.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 1.500.000 à 2.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 1.000.000 à 1.500.000 kWh/km²</sld:Name>
          <sld:Title>De 1.000.000 à 1.500.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 1.000.000 à 1.500.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F0A000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 750.000 à 1.000.000 kWh/km²</sld:Name>
          <sld:Title>De 750.000 à 1.000.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 750.000 à 1.000.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F0C000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 500.000 à 750.000 kWh/km²</sld:Name>
          <sld:Title>De 500.000 à 750.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 500.000 à 750.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFE000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 400.000 à 500.000 kWh/km²</sld:Name>
          <sld:Title>De 400.000 à 500.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 400.000 à 500.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E0F000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 300.000 à 400.000 kWh/km²</sld:Name>
          <sld:Title>De 300.000 à 400.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 300.000 à 400.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C0E000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 250.000 à 300.000 kWh/km²</sld:Name>
          <sld:Title>De 250.000 à 300.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 250.000 à 300.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A0D000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 200.000 à 250.000 kWh/km²</sld:Name>
          <sld:Title>De 200.000 à 250.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 200.000 à 250.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#80C000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 150.000 à 200.000 kWh/km²</sld:Name>
          <sld:Title>De 150.000 à 200.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 150.000 à 200.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#60B000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 100.000 à 150.000 kWh/km²</sld:Name>
          <sld:Title>De 100.000 à 150.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 100.000 à 150.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#40A000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 50.000 à 100.000 kWh/km²</sld:Name>
          <sld:Title>De 50.000 à 100.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 50.000 à 100.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#209000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>De 0 à 50.000 kWh/km²</sld:Name>
          <sld:Title>De 0 à 50.000 kWh/km²</sld:Title>
          <ogc:Filter xmlns:ogc="http://www.opengis.net/ogc">
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>consommation_2010_kwh_par_km2</ogc:PropertyName>
              <ogc:Literal>De 0 à 50.000 kWh/km²</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#008000</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>