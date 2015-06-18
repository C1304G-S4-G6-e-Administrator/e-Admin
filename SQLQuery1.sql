create database E-Admin
go
create table admin
(
id int primary key identity,
name nvarchar(200),
username varchar(20),
pass varchar(20),
rol int,
)
go
create table instructor
(
id int primary key identity,
name nvarchar(200),
username varchar(20),
pass varchar(20),
rol int,
)
go
create table HOD
(
id int primary key identity,
name nvarchar(200),
username varchar(20),
pass varchar(20),
rol int,
)
go
create table report
(
id int primary key identity,
title nvarchar(1000),
content ntext,
timere time,
statu int,
)
go
create table lab
(
id int primary key identity,
name nvarchar(1000),
ins int,
scheID int,
)
go
create table schedua
(
id int primary key identity,
name nvarchar(1000),
ins int,
)