-- 1. La liste des adhérents à une association à une date donnée et celle des adhérents qui n'ont pas encore cotisé
select NOM_PERSONNE, PRENOM_PERSONNE
from PERSONNES
natural join ADHESIONS natural join ASSOCIATIONS natural join ADHERENTS
where NOM_ASSOCIATION = 'BDE' and DATE_ADHESION > '10-JUN-10' and COTISATION_ADHERENT > 0;

-- 2.La liste des personnes participant à un évènement 
select NOM_PERSONNE, PRENOM_PERSONNE
from PERSONNES
natural join PARTICIPATIONS natural join EVENEMENTS
where TITRE = 'GALA';

--3. La liste des personnes organisant à un évènement
select NOM_PERSONNE, PRENOM_PERSONNE
from PERSONNES
natural join ADHERENTS natural join GESTIONS natural join EVENEMENTS
where TITRE = 'OLINP';

--4. Savoir le nombre de commentaires postés pour une news
--TOFIX
select TITRE_NEWS, count(NUMERO_ADHERENT) as NOMBRE
from NEWS
natural join COMMENTAIRES group by TITRE_NEWS;

