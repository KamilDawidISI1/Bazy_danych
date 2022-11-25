select * from postac;

alter table postac modify rodzaj enum("wiking","kobieta","ptak","waz");

insert into postac values (Null, 'Loko', 'waz', Null, Null, '2021-01-01', 1);

show create table postac;

#b)
#opcja 1 like - przeniesie klucze główne, tylko stuktura
create table marynarz like postac;
#dodanie danych
insert into marynarz select * from postac;
#opcja 2 create as select struktura + dane (bez klucza)
create table marynarz select * from postac;

create table marynarz select * from postac where statek_tak is not null;

select * from marynarz;

show create table marynarz;

#c)

alter table marynarz add primary key(id_postaci);

show create table postac;

alter table marynarz add foreign key (statek_tak) references statek(nazwa_statku);

update marynarz set statek_tak = Null;

delete from marynarz where nazwa = 'Hadd';
