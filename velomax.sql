
CREATE database if not exists `velomax` ;
use velomax;

CREATE TABLE if not exists fidelio (
    noProgramme INT PRIMARY KEY,
    descript VARCHAR(20) NOT NULL,
    cout INT NOT NULL,
    duree INT NOT NULL,
    rabais FLOAT NOT NULL
);

CREATE TABLE if not exists LModele (
    noModele INT PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    grandeur VARCHAR(30),
    prixu INT NOT NULL,
    ligneP VARCHAR(30) NOT NULL
);

CREATE TABLE if not exists Assemblage (
    cadre VARCHAR(30) NOT NULL,
    guidon VARCHAR(30) NOT NULL,
    freins VARCHAR(30),
    selle VARCHAR(30) NOT NULL,
    derailleurAV VARCHAR(30),
    derailleurAR VARCHAR(30),
    roueAV VARCHAR(30) NOT NULL,
    roueAR VARCHAR(30) NOT NULL,
    reflecteur VARCHAR(30),
    pedalier VARCHAR(30) NOT NULL,
    ordinateur VARCHAR(30),
    panier VARCHAR(30),
    nom VARCHAR(30) NOT NULL,
    grandeur VARCHAR(30),
    noModele INT NOT NULL,
    FOREIGN KEY (noModele) REFERENCES lmodele (noModele)
);

INSERT INTO velomax.fidelio values (1,'Fidelio',15,1,0.05);
INSERT INTO velomax.fidelio values (2,'Fidelio Or',25,2,0.08);
INSERT INTO velomax.fidelio values (3,'Fidelio Platine',60,2,0.1);
INSERT INTO velomax.fidelio values (4,'Fidelio Max',100,3,0.12);

INSERT INTO velomax.lmodele values (101, 'Kilimandjaro', 'Adultes', 569, 'VTT');
INSERT INTO velomax.lmodele values (102 ,'NorthPole', 'Adultes', 329 ,'VTT');
INSERT INTO velomax.lmodele values(103 ,'MontBlanc', 'Jeunes', 399, 'VTT');
INSERT INTO velomax.lmodele values(104 ,'Hooligan', 'Jeunes', 199, 'VTT');
INSERT INTO velomax.lmodele values(105 ,'Orleans', 'Hommes', 229,  'Velo de course');
INSERT INTO velomax.lmodele values(106 ,'Orleans', 'Dames', 229, 'Vélo de course');
INSERT INTO velomax.lmodele values(107 ,'BlueJay', 'Hommes', 349, 'Vélo de course');
INSERT INTO velomax.lmodele values(108 ,'BlueJay' ,'Dames' ,349 ,'Vélo de course');
INSERT INTO velomax.lmodele values(109 ,'Trail Explorer' ,'Filles', 129, 'Classique');
INSERT INTO velomax.lmodele values(110 ,'Trail Explorer ','Garçons' ,129 ,'Classique');
INSERT INTO velomax.lmodele values(111 ,'Night Hawk', 'Jeunes' ,189, 'Classique');
INSERT INTO velomax.lmodele values(112, 'Tierra Verde ','Hommes' ,199 ,'Classique');
INSERT INTO velomax.lmodele values(113, 'Tierra Verde', 'Dames', 199 , 'Classique');
INSERT INTO velomax.lmodele values(114 ,'Mud Zinger I' ,'Jeunes' ,279 ,'BMX');
INSERT INTO velomax.lmodele values(115 ,'Mud Zinger II', 'Adultes', 359, 'BMX');


INSERT INTO velomax.assemblage values ('C32', 'G7', 'F3', 'S88', 'DV133', 'DR56', 'R45', 'R46',null,'P12', 'O2',null,'Kilimandjaro', 'Adultes',101);
INSERT INTO velomax.assemblage values ('C34', 'G7', 'F3', 'S88', 'DV17', 'DR87', 'R48', 'R47',null,'P12',null,null,'NorthPole', 'Adultes',102);	
INSERT INTO velomax.assemblage values ('C76', 'G7', 'F3', 'S88', 'DV17', 'DR87', 'R48', 'R47',null,'P12', 'O2',null,'MontBlanc', 'Jeunes',103);
INSERT INTO velomax.assemblage values ('C76', 'G7', 'F3', 'S88', 'DV87', 'DR86', 'R12', 'R32',null,'P12', null,null,'Hooligan', 'Jeunes',104);
INSERT INTO velomax.assemblage values ('C43', 'G9', 'F9', 'S37', 'DV57', 'DR86', 'R19', 'R18','R02','P34', null,null,'Orleans', 'Hommes',105);
INSERT INTO velomax.assemblage values ('C44f', 'G9', 'F9', 'S35', 'DV57', 'DR86', 'R19', 'R18','R02','P34', null,null,'Orleans', 'Dames',106);
INSERT INTO velomax.assemblage values ('C43', 'G9', 'F9', 'S37', 'DV57', 'DR87', 'R19', 'R18','R02','P34', 'O4',null,'BlueJay', 'Hommes',107);
INSERT INTO velomax.assemblage values ('C43f', 'G9', 'F9', 'S35', 'DV57', 'DR87', 'R19', 'R18','R02','P34', 'O4',null,'BlueJay', 'Dames',108);
INSERT INTO velomax.assemblage values ('C01', 'G12', null, 'S02', null, null, 'R45', 'R2','R09','P1', null,'S01','Trail Explorer', 'Filles',109);
INSERT INTO velomax.assemblage values ('C02', 'G12', null, 'S03', null, null, 'R45', 'R2','R09','P1', null,'S05','Trail Explorer', 'Garçons',110);
INSERT INTO velomax.assemblage values ('C15', 'G12', 'F9', 'S36', 'DV15', 'DR23', 'R11', 'R12','R10','P15', null,'S74','Night Hawk', 'Jeunes',111);
INSERT INTO velomax.assemblage values ('C87', 'G12', 'F9', 'S36', 'DV41', 'DR76', 'R11', 'R12','R10','P15', null,'S74','Tierra Verde', 'Hommes',112);
INSERT INTO velomax.assemblage values ('C87f', 'G12', 'F9', 'S34', 'DV41', 'DR76', 'R11', 'R12','R10','P15', null,'S73','Tierra Verde', 'Dames',113);
INSERT INTO velomax.assemblage values ('C25', 'G7', 'F3', 'S87', 'DV132', 'DR52', 'R44', 'R47',null,'P12', null,null,'Mud Zinger I', 'Jeunes',114);
INSERT INTO velomax.assemblage values ('C26', 'G7', 'F3', 'S87', 'DV133', 'DR52', 'R44', 'R47',null,'P12', null,null,'Mud Zinger II', 'Adultes',115);
