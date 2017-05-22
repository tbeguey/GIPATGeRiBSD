select geoserver_xml.title, metadata.title, couche_libelle, type_donnees_echange_libelle
from communs.correspondance
join geoserver.geoserver_xml on idgeoserver = idcouche
join geonetwork.metadata on idgeonetwork = uuid
join cartogip.couche on idcartogip = id_couche
join bsd.type_donnees_echange on idbsd = no_type_donnees_echange;
