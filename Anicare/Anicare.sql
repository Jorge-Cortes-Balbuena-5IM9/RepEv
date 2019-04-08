create database Anicare;
use Anicare;

create table usuarios (
nombre varchar(12), 
contrasena varchar(12), 
email varchar(50),
rol varchar(30)
);


create table Reportes (
autor varchar(200),
Asunto varchar(200),
clasif varchar(200),
Modulo varchar(200),
contenido varchar(200)
);


insert into usuarios values("yivos52","contra123","yivo@mail.com","Gerente de soporte");
insert into usuarios values("kemry52","contra123","kemry@mail.com","Ingeniero de Soporte");
insert into usuarios values("jorge52","contra123","jorge@mail.com","Operador");
insert into usuarios values("emilio52","contra123","emilio@mail.com","Usuario Normal");
 
 drop table Reportes;
 
Select *from usuarios;
Select * from reportes;
Select * from contenido2;