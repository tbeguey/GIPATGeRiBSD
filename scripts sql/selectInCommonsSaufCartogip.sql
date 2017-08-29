select geoserver_xml.title, metadata.title, type_donnees_echange_libelle, date_validation, correspondance.id, date_derniere_modification, metadata.source, entreprise_abrege, workspace
from communs.correspondance
left outer join geoserver.geoserver_xml on correspondance.idgeoserver_xml = geoserver_xml.idcouche
left outer join geonetwork.metadata on idmetadata = uuid
left outer join bsd.pigma_donnees_a_dispo on id_donnee = idpigma_donnees_a_dispo
left outer join bsd.type_donnees_echange on type_donnee = type_donnees_echange.no_type_donnees_echange
left outer join bsd.entreprise_contact on id_entreprise = no_entreprise
