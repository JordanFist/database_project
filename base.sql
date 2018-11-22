-- ============================================================
--   Nom de la base   :  ASSOCIATION                                
--   Nom de SGBD      :  ORACLE Version 7.0                    
--   Date de creation :  13/11/18  16:35                       
-- ============================================================

drop table ROLE cascade constraints;

drop table ASSOCIATIONS cascade constraints;

drop table PERSONNES cascade constraints;

drop table ADHERENTS cascade constraints;

drop table PARTICIPATIONS cascade constraints;

drop table EVENEMENTS cascade constraints;

drop table NEWS cascade constraints;

drop table COMMENTAIRES cascade constraints;

drop table ADHESIONS cascade constraints;

drop table FINANCEMENTS cascade constraints;

drop table FINANCEURS cascade constraints;

drop table ORGANISATIONS cascade constraints;

drop table GESTIONS cascade constraints;

drop table NOTATIONS cascade constraints;

-- ============================================================
--   Table : ASSOCIATIONS                                            
-- ============================================================
create table ASSOCIATIONS
(
    NUMERO_ASSOCIATION		NUMBER(3)              not null,
    NOM_ASSOCIATION		CHAR(20)               not null,
    DATE_DE_CREATION		DATE                   not null,
    constraint pk_association primary key (NUMERO_ASSOCIATION)
);


-- ============================================================
--   Table : PERSONNES                             
-- ============================================================

create table PERSONNES
(
    NUMERO_ETUDIANT		NUMBER(3)		not null,
    NOM_PERSONNE		CHAR(20)		not null,
    PRENOM_PERSONNE		CHAR(20)			,
    MAIL_PERSONNE		CHAR(30)			,
    FILIERE_PERSONNE		CHAR(20)		not null,
    PROMO_PERSONNE		NUMBER(4)			,
    LOGIN_PERSONNE		CHAR(20)		not null,
    MOT_DE_PASSE		CHAR(20)			,
    constraint pk_personne primary key (NUMERO_ETUDIANT)
);

-- ============================================================
--   Table : ADHERENTS                                            
-- ============================================================

create table ADHERENTS
(
    NUMERO_ADHERENT		NUMBER(3)		not null,
    COTISATION_ADHERENT		NUMBER(3)		not null,
    NUMERO_ETUDIANT		CHAR(20)			,
    constraint pk_adherent primary key (NUMERO_ADHERENT)
);

-- ============================================================
--   Table : NEWS                                            
-- ============================================================

create table NEWS
(
    NUMERO_NEWS			NUMBER(3)		not null,
    TITRE_NEWS			CHAR(20)		not null,
    TEXTE_NEWS			CHAR(20)			,
    DATE_DE_CREATION_NEWS	DATE				,
    NUMERO_ADHERENT		CHAR(20)			,
    constraint pk_news primary key (NUMERO_NEWS)
);

-- ============================================================
--   Table : EVENEMENTS                                            
-- ============================================================

create table EVENEMENTS
(
    NUMERO_EVENEMENT		NUMBER(3)		not null,
    TITRE			char(20)		not null,
    DESCRIPTION			char(20)			,
    COUT			NUMBER(3)			,
    LIEU			char(20)			,
    NOMBRE_DE_PLACES		NUMBER(3)			,
    constraint pk_evenement primary key (NUMERO_EVENEMENT)
);

-- ============================================================
--   Table : FINANCEMENTS                                            
-- ============================================================

create table FINANCEMENTS
(
    NUMERO_FINANCEMENT		NUMBER(3)		not null,
    SOURCE			char(20)		not null,
    constraint pk_financement primary key (NUMERO_FINANCEMENT)
);

-- ============================================================
--   Table : PARTICIPATIONS                                            
-- ============================================================

create table PARTICIPATIONS
(
    NUMERO_ETUDIANT		NUMBER(3)		not null,
    NUMERO_EVENEMENT		NUMBER(3)		not null,
    TARIF			char(20)			,
    constraint pk_ETUDIANT primary key (NUMERO_ETUDIANT)
    constraint pk_EVENEMENT primary key (NUMERO_EVENEMENT)
);

-- ============================================================
--   Table : NOTATIONS                                            
-- ============================================================

create table NOTATIONS
(
    NUMERO_EVENEMENT		NUMBER(3)		not null,
    NUMERO_ADHERENT		NUMBER(20)		not null,
    NUMERO_PERSONNE		NUMBER(3)		not null,
    constraint pk_evenement primary key (NUMERO_EVENEMENT)
    constraint pk_adherent primary key (NUMERO_ADHERENT)
    constraint pk_personne primary key (NUMERO_PERSONNE)
);

-- ============================================================
--   Table : COMMENTAIRES                                            
-- ============================================================

create table COMMENTAIRES
(
    NUMERO_ADHERENT		NUMBER(3)		not null,
    NUMERO_NEWS 		NUMBER(3)		not null,
    constraint pk_evenement primary key (NUMERO_EVENEMENT)
    constraint pk_news primary key (NUMERO_NEWS)
);

-- ============================================================
--   Table : GESTIONS                                            
-- ============================================================

create table GESTIONS
(
    NUMERO_EVENEMENT		NUMBER(3)		not null,
    NUMERO_ADHERENT		NUMBER(3)		not null,
    constraint pk_evenement primary key (NUMERO_EVENEMENT)
    constraint pk_adherent primary key (NUMERO_ADHERENT)
);

-- ============================================================
--   Table : FINANCEURS                                      
-- ============================================================

create table FINANCEURS
(
    NUMERO_FINANCEMENT		NUMBER(3)		not null,
    SOURCE_FINANCEMENT		char(20)		not null,
    constraint pk_financement primary key (NUMERO_FINANCEMENT)
);

-- ============================================================
--   Table : ORGANISATIONS                                      
-- ============================================================

create table ORGANISATIONS
(
    NUMERO_EVENEMENT		NUMBER(3)		not null,
    NUMERO_ASSOCIATION		NUMBER(3)		not null,
    DATE_DÉBUT			DATE				,
    DATE_FIN			DATE				,
    constraint pk_evenement primary key (NUMERO_EVENEMENT)
    constraint pk_association primary key (NUMERO_ASSOCIATION)
);


alter table PARTICIPATIONS
    add constraint fk1_participations foreign key (NUMERO_ETUDIANT)
       references PERSONNES (NUMERO_ETUDIANT);

alter table PARTICIPATIONS
    add constraint fk2_participations foreign key (NUMERO_EVENEMENT)
       references EVENEMENTS (NUMERO_EVENEMENT);

alter table NOTATIONS
    add constraint fk1_notations foreign key (NUMERO_EVENEMENT)
       references EVENEMENTS (NUMERO_EVENEMENT);

alter table NOTATIONS
    add constraint fk2_notations foreign key (NUMERO_ADHERENT)
       references ADHERENTS (NUMERO_ADHERENT);

alter table NOTATIONS
    add constraint fk3_notations foreign key (NUMERO_PERSONNE)
       references PERSONNES (NUMERO_PERSONNE);

alter table GESTIONS
    add constraint fk1_gestions foreign key (NUMERO_EVENEMENT)
       references EVENEMENTS (NUMERO_EVENEMENT);

alter table GESTIONS
    add constraint fk2_gestions foreign key (NUMERO_ADHERENT)
       references ADHERENTS (NUMERO_ADHERENT);

alter table COMMENTAIRES
    add constraint fk1_commentaires foreign key (NUMERO_ADHERENT)
       references ADHERENTS (NUMERO_ADHERENT);

alter table COMMENTAIRES
    add constraint fk2_commentaires foreign key (NUMERO_NEWS)
       references NEWS (NUMERO_NEWS);

alter table ADHESIONS
    add constraint fk1_adhesions foreign key (NUMERO_ADHERENT)
       references ADHERENTS (NUMERO_ADHERENT);

alter table ADHESIONS
    add constraint fk2_adhesions foreign key (NUMERO_ASSOCIATION)
       references ASSOCIATIONS (NUMERO_ASSOCIATION);

alter table FINANCEMENTS
    add constraint fk1_financements foreign key (NUMERO_FINANCEMENT)
       references FINANCEURS (NUMERO_FINANCEMENT);

alter table FINANCEMENTS
    add constraint fk2_financements foreign key (NUMERO_ASSOCIATION)
       references ASSOCIATIONS (NUMERO_ASSOCIATION);

alter table ORGANISATIONS
    add constraint fk1_organisations foreign key (NUMERO_EVENEMENT)
       references EVENEMENTS (NUMERO_EVENEMENT);

alter table ORGANISATIONS
    add constraint fk2_organisations foreign key (NUMERO_ASSOCIATION)
       references ASSOCIATIONS (NUMERO_ASSOCIATION);

