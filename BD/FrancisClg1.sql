-- Généré par Oracle SQL Developer Data Modeler 4.0.3.853
--   à :        2015-04-21 15:22:42 EDT
--   site :      Oracle Database 11g
--   type :      Oracle Database 11g




CREATE TABLE Adherent
  (
    numEmp    NUMBER NOT NULL ,
    nomEmp    VARCHAR2 (40) ,
    prenomEmp VARCHAR2 (40) ,
    adresse   VARCHAR2 (80) ,
    numTel    NUMBER (10)
  ) ;
ALTER TABLE Adherent ADD CONSTRAINT Adherent_PK PRIMARY KEY ( numEmp ) ;

CREATE TABLE Exemplaire
  (
    numExemplaire NUMBER NOT NULL ,
    numLivre      NUMBER NOT NULL
  ) ;
ALTER TABLE Exemplaire ADD CONSTRAINT Exemplaire_PK PRIMARY KEY ( numExemplaire ) ;

CREATE TABLE Genre
  ( numGenre NUMBER NOT NULL , nomGenere VARCHAR2 (40)
  ) ;
ALTER TABLE Genre ADD CONSTRAINT Genre_PK PRIMARY KEY ( numGenre ) ;

CREATE TABLE Livre
  (
    numLivre NUMBER NOT NULL ,
    titre    VARCHAR2 (80) ,
    auteur   VARCHAR2 (80) ,
    numGenre NUMBER NOT NULL
  ) ;
ALTER TABLE Livre ADD CONSTRAINT Genre_PK PRIMARY KEY ( numLivre ) ;

CREATE TABLE Pret
  (
    numExemplaire   NUMBER NOT NULL ,
    numEmp          NUMBER NOT NULL ,
    datePret        DATE NOT NULL ,
    dateRetourPrevu DATE ,
    dateRetourner   DATE
  ) ;
ALTER TABLE Pret ADD CONSTRAINT Pret_PK PRIMARY KEY ( numExemplaire, numEmp, datePret ) ;

ALTER TABLE Exemplaire ADD CONSTRAINT Exemplaire_Livre_FK FOREIGN KEY ( numLivre ) REFERENCES Livre ( numLivre ) ;

ALTER TABLE Livre ADD CONSTRAINT Livre_Genre_FK FOREIGN KEY ( numGenre ) REFERENCES Genre ( numGenre ) ;

ALTER TABLE Pret ADD CONSTRAINT Pret_Adherent_FK FOREIGN KEY ( numEmp ) REFERENCES Adherent ( numEmp ) ;

ALTER TABLE Pret ADD CONSTRAINT Pret_Exemplaire_FK FOREIGN KEY ( numExemplaire ) REFERENCES Exemplaire ( numExemplaire ) ;


-- Rapport récapitulatif d'Oracle SQL Developer Data Modeler : 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
Commit;
