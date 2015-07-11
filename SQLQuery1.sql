USE MASTER
GO
IF(EXISTS(SELECT * FROM sys.databases WHERE name LIKE 'DTB_Project_Sem4'))
DROP DATABASE DTB_Project_Sem4
GO
CREATE DATABASE DTB_Project_Sem4
GO
use DTB_Project_Sem4

/* bang user */
go

create table Users
(
	usr_id int identity primary key,
	usr_username varchar(20),
	usr_name nvarchar(20),	
	usr_pass varchar(20),
	usr_role int
)
go
insert into Users values('hungnh','Nguyen Huy Hung','123456',1)
insert into Users values('thoitv','Tran Van Thoi','123456',1)
insert into Users values('minhpd','Pham Duc Minh','123456',2)
insert into Users values('chiensv','Sai Van Chien','123456',2)
insert into Users values('manhtv','Tran Van Manh','123456',1)
insert into Users values('luongvn','Vu Ngoc Luong','123456',1)
insert into Users values('truongnx','nguyen Xuan Truong','123456',1)
insert into Users values('ducht','Hoang Trung Duc','123456',0)
insert into Users values('dungtd','Trinh Dinh Dung','123456',0)
insert into Users values('linhnt','Trinh Dinh Linh','123456',1)
go
select * from users
/* bang report */

/* bang lab */
go
create table Labs
(
lab_id int identity primary key ,
lab_name nvarchar(20),
lab_quantity_student int,
numOfCom int
)

insert into Labs values('c1304g',30,31)
insert into Labs values('c1309g',30,32)
insert into Labs values('c13010g',30,33)
insert into Labs values('c1311g',30,34)
insert into Labs values('c1317g',30,35)
insert into Labs values('c1320g',30,36)
insert into Labs values('c1351g',30,37)
insert into Labs values('c1312g',30,35)
insert into Labs values('c1323g',30,36)
insert into Labs values('c1354g',30,37)
go
select * from Labs
go
create table TimeTable
(
time_tableID int identity primary key,
lab_ID int foreign key(lab_ID) references Labs(lab_id),
usr_id int,
sta int,
dat date,
slot int
)
go
insert into TimeTable values(1,1,0,'2015-07-13',1)
insert into TimeTable values(2,2,0,'2015-07-14',2)
insert into TimeTable values(3,5,0,'2015-07-15',3)
insert into TimeTable values(4,6,0,'2015-07-16',3)
insert into TimeTable values(5,7,1,'2015-07-17',2)
insert into TimeTable values(6,1,1,'2015-07-18',1)
insert into TimeTable values(7,2,1,'2015-07-19',3)
insert into TimeTable values(1,10,0,'2015-07-20',2)
insert into TimeTable values(3,5,0,'2015-07-21',1)
go
create table Reports
(
report_id int identity primary key ,
usr_id int foreign key(usr_id) references users(usr_id),
techID int,
lab_id int,
report_title nvarchar(100),
report_content nvarchar(1000),
report_timere date,
report_status int,
report_deadline date,
report_message nvarchar(1000)
)
go
insert into Reports values(2,0,1,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-06',0,'2015-06-08','xzzzzzzzz')
insert into Reports values(2,0,3,'Khong co internet','Phong hoc khong ket noi duoc internet','2015-06-26',0,'2015-06-28','xzzzzzzzzzzzz')
insert into Reports values(1,0,4,'May tinh hong','2 may 15 va 21 hong khong len nguon','2015-06-06',0,'2015-06-06','dasdsa')
insert into Reports values(5,4,5,'Dieu hoa hong','Dieu hoa trong phong hong','2015-06-16',2,'2015-06-18','sadasdsa')
insert into Reports values(2,0,1,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-09',0,'2015-06-11','dsadsa')
insert into Reports values(6,4,7,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-05-20',1,'2015-05-22','dsadas')
insert into Reports values(5,3,6,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-07-11',2,'2015-07-13','dsadsa')
insert into Reports values(7,0,2,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-07-10',0,'2015-07-12','dsadasda')
insert into Reports values(5,3,6,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-07-11',3,'2015-07-13','dsadsa')
insert into Reports values(7,4,2,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-07-10',3,'2015-07-12','dsadasda')
GO
select * from Reports where report_id=3
select * from Timetable
update TimeTable set sta=2 where time_tableID=1
 select * from Reports where techID =  4 and report_status=1
 create proc deleteUser
 @usr_id int
 as
 delete from Users where usr_id=@usr_id