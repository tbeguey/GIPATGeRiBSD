public class Main {

    public static void main(String args[]) {
        PostGreSQL postGreSqlBSD = new PostGreSQL();
        postGreSqlBSD.connection("172.30.100.12:5432/bsd?currentSchema=geonetwork", "admpostgres", "admpostgres");
        postGreSqlBSD.dropTable("metadata");
        postGreSqlBSD.createTable("metadata");

        PostGreSQL postGreSQLGeorchestra = new PostGreSQL();
        postGreSQLGeorchestra.connection("www.pigma.org:5432/georchestra?currentSchema=geonetwork", "pigma", "Eixo1ob5");

        String[] paths = {"(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/fra:FRA_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}, {fra,http://www.cnig.gouv.fr/2005/fra}}'))[1]::text as title,\n",
        "(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as title,\n",
        "(xpath('/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco,http://www.isotc211.org/2005/gco}}'))[1]::text as uuid,\n" +
                "(xpath('/gmd:MD_Metadata/gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString/text()', data::xml, '{{gmd,http://www.isotc211.org/2005/gmd},{gco, http://www.isotc211.org/2005/gco}, {srv, http://www.isotc211.org/2005/srv} }'))[1]::text as title,\n",
        "(xpath('/Metadata/mdFileID/text()', data::xml))[1]::text as uuid,\n" +
                "(xpath('/Metadata/dataIdInfo/idCitation/resTitle/text()', data::xml))[1]::text as title,",
        "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                "(xpath('/gfc:FC_FeatureCatalogue/gfc:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as title,\n",
        "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                "(xpath('/gfc:FC_FeatureCatalogue/gmx:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}, {gmx, http://www.isotc211.org/2005/gmx}}'))[1]::text as title,\n",
        "'INDISPONIBLE' as uuid,\n" +
                "(xpath('/gfc:FC_FeatureCatalogue/gfc:name/gco:CharacterString/text()', data::xml, '{{gco, http://www.isotc211.org/2005/gco}, {gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as title,\n",
        "(xpath('/gfc:FC_FeatureCatalogue/@uuid', data::xml, '{{gfc, http://www.isotc211.org/2005/gfc}}'))[1]::text as uuid,\n" +
                "'INDISPONIBLE' as title,\n"};

        for (String path : paths) {
            postGreSQLGeorchestra.getLines(path);
        }

        for (Line l : postGreSQLGeorchestra.getLines()) {
            postGreSqlBSD.addLine("metadata", l);
        }

        postGreSqlBSD.deconnection();
        postGreSQLGeorchestra.deconnection();
    }
}
