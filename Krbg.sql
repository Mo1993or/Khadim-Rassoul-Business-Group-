/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  19/05/2019 16:24:56                      */
/*==============================================================*/
create database krbg;
use krbg;

drop table if exists Galerie;

drop table if exists Message;

drop table if exists User;

/*==============================================================*/
/* Table : Galerie                                              */
/*==============================================================*/
create table Galerie
(
   idGalerie            int not null auto_increment,
   idUser               int not null,
   categorie            varchar(254),
   nomGalerie           varchar(254),
   prix            varchar(254),
   propriete           varchar(254),
   primary key (idGalerie)
);

/*==============================================================*/
/* Table : Message                                              */
/*==============================================================*/
create table Message
(
   idMess               int not null auto_increment,
   idUser               int not null,
   nom                  varchar(254),
   email                varchar(254),
   corpsMess            varchar(254),
   primary key (idMess)
);
create table Client
(
   idClient               int not null auto_increment,
   prenom                  varchar(254),
   nom                  varchar(254),
   adresse                  varchar(254),
   telephone                  varchar(254),
   email                varchar(254),
   
   primary key (idClient)
);
create table Commande
(
   idCommande               int not null auto_increment,
   idClient               int not null,
   idUser               int not null,
dateCommande  		varchar(254),
idGalerie            int not,
   
   
   primary key (idCommande)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table User
(
   idUser               int not null auto_increment,
   login                varchar(254),
   password             varchar(254),
   primary key (idUser)
);

alter table Galerie add constraint FK_enregistrer foreign key (idUser)
      references User (idUser) on delete cascade on update cascade;

alter table Commande add constraint FK_fait foreign key (idClient)
      references Client (idClient) on delete cascade on update cascade;
alter table Commande add constraint FK_ach foreign key (idGalerie)
      references Galerie (idGalerie) on delete cascade on update cascade;

alter table Commande add constraint FK_valide foreign key (idUser)
      references User (idUser) on delete cascade on update cascade;

alter table Message add constraint FK_repondre foreign key (idUser)
      references User (idUser) on delete cascade on update cascade;

