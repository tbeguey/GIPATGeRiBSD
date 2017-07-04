CREATE TABLE communs.correspondance (
id serial PRIMARY KEY,
idgeonetwork text REFERENCES geonetwork.metadata(uuid),
idgeoserver text REFERENCES geoserver.geoserver_xml(idcouche),
idcartogip integer REFERENCES cartogip.couche(id),
idbsd integer REFERENCES bsd.type_donnees_echange(id),
date_validation date,
date_derniere_modification date
);