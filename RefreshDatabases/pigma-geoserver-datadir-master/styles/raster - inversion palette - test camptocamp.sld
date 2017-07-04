<StyledLayerDescriptor version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <NamedLayer>
        <se:Name>raster</se:Name>
        <UserStyle>
            <se:Name>raster</se:Name>
            <se:FeatureTypeStyle>
                <se:Rule>
                    <se:RasterSymbolizer>
                        <se:Opacity>1</se:Opacity>
                        <se:ColorMap>
                            <se:Categorize>
                                <se:LookupValue>Rasterdata</se:LookupValue>
                                <se:Value>#ffffff</se:Value>
                                <se:Threshold>1</se:Threshold>
                                <se:Value>#000000</se:Value>
                                <se:Threshold>0</se:Threshold>
                            </se:Categorize>
                        </se:ColorMap>
                    </se:RasterSymbolizer>
                </se:Rule>
            </se:FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>