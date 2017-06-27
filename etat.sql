select entreprise_abrege, type_donnees_echange.titre, conventionnee, exists(select 1 from geonetwork.metadata where uuid = idgeonetwork) as catalog, exists(select 1 from geoserver.geoserver_xml where idcouche = idgeoserver) as publish, exists(select 1 from cartogip.couche where couche.id = idcartogip) as cartogip
from communs.correspondance
join bsd.type_donnees_echange  on idbsd = type_donnees_echange.id
join bsd.pigma_donnees_a_dispo on type_donnee = type_donnees_echange.id
join bsd.entreprise_contact on id_entreprise = no_entreprise
order by entreprise_abrege, type_donnees_echange.titre