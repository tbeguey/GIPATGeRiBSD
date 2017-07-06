UPDATE geonetwork.metadata SET idparent = null where 1=1;
UPDATE geoserver.geoserver_xml SET idparent = null where 1=1;
UPDATE cartogip.couche SET idparent = null where 1=1;
UPDATE bsd.type_donnees_echange SET idparent = null where 1=1;