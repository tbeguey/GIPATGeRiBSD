ALTER TABLE bsd.pigma_donnees_a_dispo add column idparent integer;
ALTER TABLE bsd.pigma_donnees_a_dispo add constraint parent FOREIGN KEY (idparent) REFERENCES bsd.pigma_donnees_a_dispo(id_donnee);

ALTER TABLE bsd.pigma_donnees_a_dispo add column idparent_geoserver_xml text;
ALTER TABLE bsd.pigma_donnees_a_dispo add constraint parent_geoserver_xml FOREIGN KEY (idparent_geoserver_xml) REFERENCES geoserver.geoserver_xml (idcouche);

ALTER TABLE bsd.pigma_donnees_a_dispo add column idparent_metadata text;
ALTER TABLE bsd.pigma_donnees_a_dispo add constraint parent_metadata FOREIGN KEY (idparent_metadata) REFERENCES geonetwork.metadata (uuid);

ALTER TABLE bsd.pigma_donnees_a_dispo add column idparent_couche int;
ALTER TABLE bsd.pigma_donnees_a_dispo add constraint parent_couche FOREIGN KEY (idparent_couche) REFERENCES cartogip.couche (id);