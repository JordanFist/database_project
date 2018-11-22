-- ============================================================
--    suppression des donnees
-- ============================================================

delete from ASSOCIATIONS ;
delete from ADHERENTS ;
delete from PERSONNES ;
delete from EVENEMENTS ;
delete from NEWS ;
delete from FINANCEMENTS ;
delete from FINANCEURS ;
delete from ADHESIONS ;
delete from ORGANISATIONS ;
delete from GESTIONS ;
delete from NOTATIONS ;
delete from COMMENTAIRES ;
delete from PARTICIPATIONS ;

commit ;

-- ============================================================
--    creation des donnees
-- ===========================================================

-- ASSOCIATIONS

insert into ASSOCIATIONS values (  1 , 'BDE'     , 'JUIN-1920' , 'GENERAL'  ) ;
insert into ASSOCIATIONS values (  2 , 'BDS'     , 'JUIN-1980' , 'SPORTS'  ) ;
insert into ASSOCIATIONS values (  3 , 'BDA'     , 'JUIN-2000' , 'ARTS'      ) ;
insert into ASSOCIATIONS values (  4 , 'BAR'     , 'JUIN-2005' , 'BOISSONS'  ) ;
insert into ASSOCIATIONS values (  5 , 'AIRTEL'  , 'JUIN-2003' , 'ALTERNANTS'  ) ;
insert into ASSOCIATIONS values (  6 , 'EIRBWARE', 'JUIN-2005' , 'TECHNOLOGIE'  ) ;
insert into ASSOCIATIONS values (  7 , 'ZIK'     , 'JUIN-1990' , 'MUSIQUE'  ) ;
insert into ASSOCIATIONS values (  8 , 'PIXEIRB' , 'JUIN-2009' , 'PHOTOS'  ) ;
insert into ASSOCIATIONS values (  9 , 'OENO'    , 'JUIN-2015' , 'VINS'  ) ;
insert into ASSOCIATIONS values ( 10 , 'CINEIRB' , 'JUIN-2010' , 'FILMS'  ) ;

commit ;

-- PERSONNES 

insert into PERSONNES values (  1 , 'SANDRI'   , 'JORDAN'       , 'JSANDRI@ENSEIRB.FR'    , 'INFO' , 2020 , 'JSANDRI', '1234512345') ;
insert into PERSONNES values (  2 , 'LEECHAOSHIT'    , 'TERENCE'      , 'TLCS@ENSEIRB.FR'    , 'INFO' , 2020 , 'TLCS', 'LONGNOM') ;
insert into PERSONNES values (  3 , 'PERIS'  , 'SARAH'     , 'SPERIS@ENSEIRB.FR'    , 'INFO' , 2020, 'SPERIS', 'NAINE' ) ;
insert into PERSONNES values (  4 , 'AYMARD'  , 'JEAN'     , 'JAYMARD@ENSEIRB.FR'    , 'MATMECA' , 2022, 'JAYMARD', 'CHAMPIGNON' ) ;
insert into PERSONNES values (  5 , 'ZOLE'  , 'CAMILLE'     , 'CZOLE@ENSEIRB.FR'    , 'MATMECA' , 2017, 'CZOLE', 'ENFERMEE' ) ;
insert into PERSONNES values (  6 , 'TERIEUR'  , 'ALAIN'     , 'ATERIEUR@ENSEIRB.FR'    , 'ELEC' , 2022, 'ATERIEUR', 'INTERIEUR' ) ;
insert into PERSONNES values (  7 , 'KAN'  , 'JERRY'     , 'JKAN@ENSEIRB.FR'    , 'ELEC' , 2010, 'JKAN', 'BIDON' ) ;
insert into PERSONNES values (  8 , 'BAR' , 'LENNY'       , 'LBAR@ENSEIRB.FR'   , 2025,  'LBAR', 'BUSTE' ) ;
insert into PERSONNES values (  9 , 'VERSAIRE'  , 'ANNIE'     , 'AVERSAIRE@ENSEIRB.FR'    , 'TELE' , 2020, 'AVERSAIRE', 'BONNEFETE' ) ;
insert into PERSONNES values ( 10 , 'CONDA'     , 'ANNA'       , 'ACONDA@ENSEIRB.FR' , 2010, 'ACONDA', 'SERPENT' ) ;

commit ;

-- ADHESIONS 

insert into ADHESIONS values (  1 , 5 , 'SEPT-2021', 'OUI' );
insert into ADHESIONS values (  2 , 9 , 'SEPT-2016', 'OUI' );
insert into ADHESIONS values (  3 , 1 , 'SEPT-2019', 'OUI' );
insert into ADHESIONS values (  4 , 2 , 'SEPT-2019', 'NON' );
insert into ADHESIONS values (  5 , 10, 'SEPT-2021', 'NON' );
insert into ADHESIONS values (  6 , 5 , 'SEPT-2016', 'NON' );
insert into ADHESIONS values (  7 , 7 , 'SEPT-2020', 'OUI' );
insert into ADHESIONS values (  8 , 6 , 'SEPT-2019', 'NON' );
insert into ADHESIONS values (  9 , 4 , 'SEPT-2021', 'NON' );
insert into ADHESIONS values ( 10 , 4 , 'SEPT-2016', 'OUI' );

commit ;

-- NEWS 

insert into NEWS values (  1 , 'PREZ VIRE' , 'LE PREZ EST MORT', '22-MAI-2015', 5 );
insert into NEWS values (  2 , 'NOUVEAU PREZ' , 'REMPLACEMENT RAPIDE', '23-MAI-2015', 10 );
insert into NEWS values (  3 , 'NOUVEAU BUREAU' , 'CHANGEMENT DE TOUT LE BUREAU', '24-MAI-2015', 5 );
insert into NEWS values (  4 , 'VOL DE LA TRESORERIE' , 'LE PREZ SE BARRE AVEC LARGENT', '31-MAI-2015', 4 );
insert into NEWS values (  5 , 'NOUVEAU PREZ' , 'ELU ALEATOIREMENT', '1-JUIN-2015', 6 );
insert into NEWS values (  6 , 'INEFFICACITE' , 'LASSOCIATION DEVIENT NULLE', '10-JUIN-2015', 1 );
insert into NEWS values (  7 , 'COUP DETAT' , 'LE PREZ SE FAIT DECAPITER', '13-JUIN-2015', 10 );
insert into NEWS values (  8 , 'REGIME DEMOCRATIQUE' , 'DEMOCRATIE OUI', '27-JUIN-2015', 1 );
insert into NEWS values (  9 , 'NAISSANCE' , 'LE PREZ A UN FILS', '24-JANV-2016', 7 );
insert into NEWS values ( 10 , 'ACCIDENT DE TRAIN' , 'LE PREZ EST MORT', '22-MAI-2015', 2 );

commit ;

-- COMMENTAIRES 

insert into COMMENTAIRES values (  1 , 6  );
insert into COMMENTAIRES values (  2 , 8  );
insert into COMMENTAIRES values (  3 , 10 );
insert into COMMENTAIRES values (  4 , 1  );
insert into COMMENTAIRES values (  5 , 10 );
insert into COMMENTAIRES values (  6 , 4  );
insert into COMMENTAIRES values (  7 , 3  );
insert into COMMENTAIRES values (  8 , 2  );
insert into COMMENTAIRES values (  9 , 5  );
insert into COMMENTAIRES values ( 10 , 6  );

commit ;

-- PARTICIPATIONS

insert into PARTICIPATIONS values (  1 , 6  , 5 );
insert into PARTICIPATIONS values (  2 , 8  , 5 );
insert into PARTICIPATIONS values (  3 , 10 , 3 );
insert into PARTICIPATIONS values (  4 , 1  , 3 );
insert into PARTICIPATIONS values (  5 , 10 , 4 );
insert into PARTICIPATIONS values (  6 , 4  , 4 );
insert into PARTICIPATIONS values (  7 , 3  , 10);
insert into PARTICIPATIONS values (  8 , 2  , 2 );
insert into PARTICIPATIONS values (  9 , 5  , 2 );
insert into PARTICIPATIONS values ( 10 , 6  , 6 );

commit ;

-- NOTATIONS

insert into NOTATIONS values (  1 , 6  , 5 );
insert into NOTATIONS values (  2 , 8  , 5 );
insert into NOTATIONS values (  3 , 10 , 3 );
insert into NOTATIONS values (  4 , 1  , 3 );
insert into NOTATIONS values (  2 , 10 , 4 );
insert into NOTATIONS values (  6 , 4  , 4 );
insert into NOTATIONS values (  7 , 3  , 10);
insert into NOTATIONS values (  8 , 2  , 2 );
insert into NOTATIONS values (  9 , 5  , 2 );
insert into NOTATIONS values ( 10 , 6  , 6 );

commit ;

-- GESTIONS 

insert into GESTIONS values (  1 , 6  );
insert into GESTIONS values (  2 , 8  );
insert into GESTIONS values (  3 , 10 );
insert into GESTIONS values (  4 , 1  );
insert into GESTIONS values (  5 , 10 );
insert into GESTIONS values (  6 , 4  );
insert into GESTIONS values (  7 , 3  );
insert into GESTIONS values (  8 , 2  );
insert into GESTIONS values (  9 , 5  );
insert into GESTIONS values ( 10 , 6  );

commit ;

-- FINANCEMENTS 

insert into FINANCEMENTS values (  1 , 1  );
insert into FINANCEMENTS values (  2 , 2  );
insert into FINANCEMENTS values (  3 , 2  );
insert into FINANCEMENTS values (  4 , 1  );
insert into FINANCEMENTS values (  5 , 4  );

commit ;

-- ORGANISATIONS 

insert into ORGANISATIONS values (  1  , 1  , '20-JANV-2016', '21-JANV-2016');
insert into ORGANISATIONS values (  2  , 2  , '10-FEVR-2018', '11-FEVR-2016');
insert into ORGANISATIONS values (  3  , 2  , '19-MAI-2016', '25-MAI-2016');
insert into ORGANISATIONS values (  4  , 1  , '4-JUIN-2017', '5-JUIN-2016');
insert into ORGANISATIONS values (  5  , 3  , '5-JUIN-2018', '6-JUIN-2016');
insert into ORGANISATIONS values (  6  , 4  , '31-SEPT-2013', 'JANV-2016');
insert into ORGANISATIONS values (  7  , 5  , '10-JANV-2010', '15-JANV-2016');
insert into ORGANISATIONS values (  8  , 7  , '22-MARS-2018', '24-MARS-2016');
insert into ORGANISATIONS values (  9  , 9  , '7-JUIL-2015', '9-JUIL-2016');
insert into ORGANISATIONS values (  10 , 8  , '19-MAI-2016', '20-MAI-2016');

commit ;

-- ADHERENTS 

insert into ADHERENTS values (  1  , 5  , 4);
insert into ADHERENTS values (  2  , 5  , 3);
insert into ADHERENTS values (  3  , 0  , 2);
insert into ADHERENTS values (  4  , 5  , 1);
insert into ADHERENTS values (  5  , 15 , 9);
insert into ADHERENTS values (  6  , 15 , 8);
insert into ADHERENTS values (  7  , 7  , 6);
insert into ADHERENTS values (  8  , 7  , 7);
insert into ADHERENTS values (  9  , 20 , 10);
insert into ADHERENTS values (  10 , 25 , 5);

commit ;

-- FINANCEURS 

insert into FINANCEURS values (  1  , 'SOCIETE GENERALE' );
insert into FINANCEURS values (  2  , 'CAISSE DEPARGNE'  );
insert into FINANCEURS values (  3  , 'PIZZAHUT'         );
insert into FINANCEURS values (  4  , 'BURGER KING'      );
insert into FINANCEURS values (  5  , 'MCDONALDS'        );

commit ;

-- EVENEMENTS 

insert into EVENEMENTS values ( 'CONCERT DE NOEL'  , 'CONCERT'           , 4 , 'ENSEIRB', 100);
insert into EVENEMENTS values ( 'OLINP'            , 'SPORT'             , 3 , 'ENSEIRB', 300);
insert into EVENEMENTS values ( 'GALA'             , 'REMISE DE DIPLOMES', 2 , 'CHATEAU', 200);
insert into EVENEMENTS values ( 'KRACH BOURSIER'   , 'SOIREE'            , 1 , 'BAR'    , 150);
insert into EVENEMENTS values ( 'WEI'              , 'INTEGRATION'       , 9 , 'CAMPING', 500);
insert into EVENEMENTS values ( 'WEN'              , 'NATURE'            , 8 , 'CAMPAGNE', 50);
insert into EVENEMENTS values ( 'WIS'              , 'SPORT INTEGRATION' , 6 , 'IBIZA'  , 100);
insert into EVENEMENTS values ( 'WES'              , 'SKI'               , 7 , 'SERRE CHEVALIER', 100);
insert into EVENEMENTS values ( 'SOIREE BARBAPAPA' , 'BARBAPAPA'         , 10, 'BAR'    , 150);
insert into EVENEMENTS values ( 'DEPART 3A'        , 'ADIEU'             , 5, 'ENSEIRB' , 200);

commit ;

-- ============================================================
--    verification des donnees
-- ============================================================

select count(*),'= 37 ?','ACTEUR' from ACTEUR 
union
select count(*),'= 20 ?','FILM' from FILM 
union
select count(*),'= 14 ?','REALISATEUR' from REALISATEUR 
union
select count(*),'= 40 ?','ROLE' from ROLE ;
