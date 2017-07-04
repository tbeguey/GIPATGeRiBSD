ALTER TABLE bsd.type_donnees_echange add column idparent int;
ALTER TABLE bsd.type_donnees_echange add constraint parent FOREIGN KEY (idparent) REFERENCES bsd.type_donnees_echange (id);

ALTER TABLE geoserver.geoserver_xml add column idparent text;
ALTER TABLE geoserver.geoserver_xml add constraint parent FOREIGN KEY (idparent) REFERENCES geoserver.geoserver_xml (idcouche);

ALTER TABLE geonetwork.metadata add column idparent text;
ALTER TABLE geonetwork.metadata add constraint parent FOREIGN KEY (idparent) REFERENCES geonetwork.metadata (uuid);

ALTER TABLE cartogip.couche add column idparent int;
ALTER TABLE cartogip.couche add constraint parent FOREIGN KEY (idparent) REFERENCES cartogip.couche (id);