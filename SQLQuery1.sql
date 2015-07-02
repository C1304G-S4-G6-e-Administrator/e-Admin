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

create table Admins
(
admin_id int identity primary key,
admin_username varchar(20),
admin_name nvarchar(20),
admin_pass varchar(20),
)
insert into Admins values('ducht','Hoang Trung Duc','123456')
insert into Admins values('linhbt','Bui The Linh','123456')
insert into Admins values('ducnv','Nguyen Van Duc','123456')
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
insert into Labs values('c1350g',30,37)
go
select * from Labs
go

create table Reports
(
report_id int identity primary key ,
usr_id int foreign key(usr_id) references users(usr_id),
lab_id int,
report_title nvarchar(100),
report_content nvarchar(1000),
report_timere date,
report_status int
)
go
insert into Reports values(2,2,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-06',0)
insert into Reports values(1,6,'Quat hong','Quat khong quay','2015-06-22',1)
insert into Reports values(2,3,'Khong co internet','Phong hoc khong ket noi duoc internet','2015-06-26',0)
insert into Reports values(1,7,'May tinh hong','2 may 15 va 21 hong khong len nguon','2015-06-06',0)
insert into Reports values(5,1,'Dieu hoa hong','Dieu hoa trong phong hong','2015-06-16',2)
insert into Reports values(2,2,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-09',0)
insert into Reports values(6,5,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-05-20',1)
insert into Reports values(5,4,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-1',2)
insert into Reports values(7,1,'may chieu bi hong','may chieu phong hoc khong hoat dong','2015-06-21',0)
GO
select * from Reports

create table Timetables
(
timetable_id int identity primary key,
usr_id int foreign key(usr_id) references users(usr_id) ,
lab_id int,
time_start datetime,
time_end datetime,
mo bit,
tue bit,
we bit,
th bit,
fr bit,
sa bit,
su bit,
)
go
insert into Timetables values(1,1,'2015-05-20','2015-06-01',1,1,0,1,0,1,0)
insert into Timetables values(2,2,'2015-05-20','2015-06-01',0,1,0,1,0,1,0)
insert into Timetables values(5,3,'2015-05-20','2015-06-01',1,1,0,1,0,1,0)
insert into Timetables values(6,4,'2015-05-20','2015-06-01',1,0,0,0,0,1,0)
insert into Timetables values(7,5,'2015-05-20','2015-06-01',0,0,0,1,0,1,0)
insert into Timetables values(1,6,'2015-05-20','2015-06-01',1,0,0,0,0,1,0)
insert into Timetables values(2,7,'2015-05-20','2015-06-01',0,1,1,1,1,1,1)
go
CREATE PROC getAllLabs
AS
SELECT * FROM Labs
GO 

CREATE PROC insertLabs
@lab_name nvarchar(20),
@lab_quantity_student int,
@numOfCom nvarchar(200)
AS INSERT INTO Labs VALUES(@lab_name,@lab_quantity_student,@numOfCom)
GO
CREATE PROC updateLabs
@lab_id INT,
@lab_name nvarchar(20),
@lab_quantity_student int,
@numOfCom nvarchar(200)
AS
UPDATE Labs SET lab_name=@lab_name,lab_quantity_student=@lab_quantity_student,numOfCom=@numOfCom 
WHERE lab_id=@lab_id
GO
CREATE PROC deleteLabs
@lab_id INT
AS
DELETE FROM Labs WHERE lab_id=@lab_id
GO

CREATE PROC getAllAdmins
AS
SELECT * FROM Labs
GO 

CREATE PROC getAllUsers
AS
SELECT * FROM users
GO 

CREATE PROC insertUsers
@usr_username varchar(20),
@usr_name nvarchar(20),	
@usr_pass varchar(20),
@usr_role int
AS INSERT INTO users VALUES(@usr_username,@usr_name,@usr_pass,@usr_role)
GO
CREATE PROC updateUsers
@usr_id int,
@usr_username varchar(20),
@usr_name nvarchar(20),	
@usr_pass varchar(20),
@usr_role int
AS
UPDATE users SET usr_username=@usr_username,usr_name=@usr_name,usr_pass=@usr_pass,usr_role=@usr_role
WHERE usr_id=@usr_id
GO
CREATE PROC deleteUsers
@usr_id INT
AS
DELETE FROM users WHERE usr_id=@usr_id
GO


CREATE PROC getAllReports
AS
SELECT * FROM Reports
GO 

CREATE PROC insertReports
@usr_id int,
@lab_id int,
@report_title nvarchar(100),
@report_content nvarchar(1000),
@report_timere date,
@report_status int
AS INSERT INTO Reports VALUES(@usr_id,@lab_id,@report_title,@report_content,@report_timere,@report_status)
GO
CREATE PROC updateReports
@report_id int,
@usr_id int,
@lab_id int,
@report_title nvarchar(100),
@report_content nvarchar(1000),
@report_timere date,
@report_status int
AS
UPDATE Reports SET usr_id=@usr_id,lab_id=@lab_id,report_title=@report_title,report_content=@report_content,report_timere=@report_timere,
report_status=@report_status
WHERE report_id=@report_id
GO
CREATE PROC deleteReports
@usr_id INT
AS
DELETE FROM Reports WHERE usr_id=@usr_id
GO


CREATE PROC getAllTimetables
AS
SELECT * FROM Timetables
GO 

CREATE PROC insertTimetables
@usr_id int,
@lab_id int,
@time_start datetime,
@time_end datetime,
@mo bit,
@tue bit,
@we bit,
@th bit,
@fr bit,
@sa bit,
@su bit
AS INSERT INTO Timetables VALUES(@usr_id,@lab_id,@time_start,@time_end,@mo,@tue,@we,@th,@fr,@sa,@su)
GO
CREATE PROC updateTimetables
@timetable_id int,
@usr_id int,
@lab_id int,
@time_start datetime,
@time_end datetime,
@mo bit,
@tue bit,
@we bit,
@th bit,
@fr bit,
@sa bit,
@su bit
AS
UPDATE Timetables SET usr_id=@usr_id,lab_id=@lab_id,time_start=@time_start,time_end=@time_end,mo=@mo,tue=@tue,we=@we,th=@th,fr=@fr,
sa=@sa,su=@su
WHERE timetable_id=@timetable_id
GO
CREATE PROC deleteTimetables
@usr_id INT
AS
DELETE FROM Timetables WHERE usr_id=@usr_id
GO


