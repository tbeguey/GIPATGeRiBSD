select entreprise, titre, date_reception, date_integration
from communs.correspondance
join bsd.pigma_donnees_a_dispo on idpigma_donnees_a_dispo = id_donnee
join bsd.type_donnees_echange on type_donnee = type_donnees_echange.id
join bsd.entreprise_contact on no_entreprise = id_entreprise
join geonetwork.metadata on idmetadata = uuid
order by entreprise;