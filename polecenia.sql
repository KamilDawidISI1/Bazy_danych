create table przetwory (
id_przetworu int primary key auto_increment, 
rok_produkcji int(4) unsigned default 1654, 
id_wykonawcy int, zawartość varchar(255), 
dodatek varchar(255) default 'papryczka chilli', 
id_konsumenta int, 
foreign key (id_wykonawcy) references postac(id_postaci), 
foreign key (id_konsumenta) references postac(id_postaci)); 



insert into przetwory values(default, 2022 , 1, 'bigos', default, 3);


insert into postac values(DEFAULT, Ragnar, wiking, 2000-02-12, 22);
insert into postac values(DEFAULT, Steven, wiking, 1999-02-12, 23);
insert into postac values(DEFAULT, Aki, wiking, 1998-05-21, 24);
insert into postac values(DEFAULT, Hadd, wiking, 2001-12-22, 21);
insert into postac values(DEFAULT, Swann, wiking, 2002-02-12, 20);


CREATE TABLE statek (
nazwa_statku VARCHAR(255) PRIMARY KEY,
rodzaj_statku enum('handlowy','wojenny', 'najazdowy', 'turystyczny'),
data_wodowania date,
max_ladownosc int unsigned
);

INSERT INTO statek VALUES('Stachu Jones', 'wojenny', '2016-05-01', 1000);
INSERT INTO statek VALUES('Ziobro kocham cie', 'turystyczny', '2016-05-01', 2500);

ALTER TABLE postac add COLUMN funkcja VARCHAR(60) AFTER rodzaj;



UPDATE postac 
SET funkcja = 'kapitan'
WHERE id_postaci = 1;

ALTER TABLE postac add column statek_tak varchar(255) AFTER rodzaj;
ALTER TABLE postac add FOREIGN KEY (statek_tak) REFERENCES statek(nazwa_statku);


UPDATE postac 
set statek_tak='Stachu Jones'
WHERE id_postaci = 1;
WHERE id_postaci = 2;
WHERE id_postaci = 7;
WHERE id_postaci = 8;


UPDATE postac 
set statek_tak='Ziobro kocham cie'
WHERE id_postaci =4;
WHERE id_postaci =5;
WHERE id_postaci =6;


DELETE FROM izba where nazwa_budynku = 'Spizarnia';

Drop TABLE izba;

