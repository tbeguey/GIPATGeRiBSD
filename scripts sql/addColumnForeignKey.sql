ALTER TABLE excel.correspondance_inuav ADD COLUMN idcifog text; -- Ajoute la colonne

DELETE FROM excel.cifog where id is null; -- Supprime les nulls

DELETE FROM excel.cifog where ctid not in (select min(ctid) from excel.cifog group by id); -- Supprime les doublons d'id

ALTER TABLE excel.cifog ADD CONSTRAINT id_cifog_pk PRIMARY KEY(id); -- mets l'id en clé primaire

ALTER TABLE excel.correspondance_inuav ADD CONSTRAINT cifog_fk FOREIGN KEY (idcifog) REFERENCES excel.cifog; -- cette id devient aussi clé étrangère
