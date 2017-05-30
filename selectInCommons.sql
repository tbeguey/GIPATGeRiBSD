select geoserver_xml.title, metadata.title, couche_libelle, type_donnees_echange_libelle
from communs.correspondance
left outer join geoserver.geoserver_xml on idgeoserver = idcouche
left outer join geonetwork.metadata on idgeonetwork = uuid
left outer join cartogip.couche on idcartogip = id_couche
left outer join bsd.type_donnees_echange on idbsd = no_type_donnees_echange
order by case when geoserver_xml.title is null then 1 else 0 end + case when metadata.title is null then 1 else 0 end
+ case when couche_libelle is null then 1 else 0 end + case when type_donnees_echange_libelle is null then 1 else 0 end;