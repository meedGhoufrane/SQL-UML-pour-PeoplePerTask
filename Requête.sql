CREATE DATABASE PeoplePerTask
USE PeoplePerTask

CREATE TABLE users(
idUser INT PRIMARY  AUTO_INCREMENT ,
NAMEUser VARCHAR(10),
passwoed VARCHAR(8),
email VARCHAR(30),
PRIMARY KEY (idUser)
);

CREATE TABLE Catégories (
IDCat INT   AUTO_INCREMENT,
Nomcat VARCHAR(10),
PRIMARY KEY(IDCat)
);

CREATE TABLE SousCat (
IDsousCat INT  PRIMARY KEY  AUTO_INCREMENT,
NomsousCa VARCHAR(10),
IDCat int FOREIGN KEY 
);
CREATE TABLE Projets (
idproject INT PRIMARY KEY  AUTO_INCREMENT,
title VARCHAR(10),
descriptio VARCHAR(10),
IDCat int  FOREIGN KEY ,
IDsousCat int  FOREIGN KEY,
idUser int  FOREIGN KEY  
);
CREATE TABLE Freelances (
IDFreelances int PRIMARY KEY AUTO_INCREMENT,
NomFreelances VARCHAR(10),
Compétences VARCHAR(10),
idUser int  FOREIGN KEY
);
CREATE TABLE Offres (
IDOffres int PRIMARY KEY AUTO_INCREMENT,
Montant float(10),
Délai TIME ,
IDFreelanceint  FOREIGN KEY
idproject int  FOREIGN KEY
);
CREATE TABLE Témoignages(
IDTémoignage INT PRIMARY AUTO_INCREMENT,
Commentaire VARCHAR(10),
idUser int  FOREIGN KEY
);


INSERT  INTO  users VALUE ("mohammed","meed123","Mmed23@gmail.com");
INSERT  INTO  users VALUE ("youssf","youssf123","Youssefbouhala@gmail.com");


INSERT  INTO  Catégories VALUE ("cat1");

INSERT  INTO  SousCat VALUE ("SousCat1",1);

INSERT  INTO  Projets VALUE ("title1","desc1",1,1,1);

INSERT  INTO  Freelances VALUE ("youssef","Compétences1",2);

INSERT  INTO  Offres VALUE (9999.1,20-11-2023,1,1);

INSERT  INTO   Témoignages VALUE ("Commentaire1",1);

