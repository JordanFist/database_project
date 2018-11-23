-- 1. La liste des adhérents à une association à une date donnée et celle des adhérents qui n'ont pas encore cotisé
select NOM_PERSONNE, PRENOM_PERSONNE
from PERSONNES
natural join ADHESIONS natural join ASSOCIATIONS natural join ADHERENTS
where NOM_ASSOCIATION = 'BDE' and DATE_ADHESION > '10-JUN-10' and COTISATION_ADHERENT > 0;

-- 2.La liste des personnes organisant un évènement et celles des personnes participant à cet évènement
select NOM_PERSONNE, PRENOM_PERSONNE
from PERSONNE
