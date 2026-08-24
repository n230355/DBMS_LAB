#use playstore;
create table Developers(
	DeveloperID INT,
    DeveloperName VARCHAR(60),
    Country VARCHAR(30),
    FoundedYear INT,
    primary key (DeveloperID)
);

INSERT INTO Developers(DeveloperID,DeveloperName,Country,FoundedYear) 
VALUES 
(101,"Google LLC" ,"USA", 1998),
(102, "Meta Platforms", "USA",2004),
(103,"Spotify AB", "Sweden", 2006),
(104,"Canva Pty Ltd","Australia",2012),
(105,"BYJU'S","India",2011);

select * FROM Developers;

Create table Publishers(
	PublisherID INT,
    PublisherName varchar(60),
    HeadOffice varchar(40),
    SupportMail varchar(60),
    primary key(PublisherID));


insert into Publishers(PublisherID, PublisherName,HeadOffice,SupportMail)
values 
(201," Google Play", "California","support@google.com"),
(202, "Samsung Galaxy Store", "Seoul", "support@samsung.com"),
(203 ,"Huawei AppGallery"," Shenzhen", "support@huawei.com"),
(204, "Amazon Appstore", "Seattle", "support@amazon.com");

create table Categories(
	CategoryID INT,
    CategoryName VARCHAR(40),
    MinimumAge INT,
    primary key (CategoryID)
);


insert into Categories(CategoryID,CategoryName,MinimumAge)
values
(301,"Education",3),
(302,"Prodctivity",3),
(303,"Music",12),
(304,"Social",13),
(305,"Gaming",16);

create table Apps(
	AppID int,
    AppName varchar(60),
    DeveloperID int,
    PublisherID int,
    CategoryID int,
    Rating decimal(2,1),
    Downloads int,
    Price decimal(6,2),
    primary key(AppID));

alter table Apps
modify Downloads BIGINT ;
insert into Apps(AppID,AppName,DeveloperID,PublisherID,CategoryID,Rating,Downloads,Price)
values 
(1001 ,"GoogleClassroom" ,101, 201 ,301, 4.6 ,500000000, 0),
(1002," Google Keep",101, 201 ,302, 4.5, 1000000000 ,0),
(1003 ,"Instagram",102 ,201 ,304 ,4.4 ,5000000000 ,0),
(1004 ,"Spotify",103 ,201 ,303 ,4.5, 1000000000 ,0),
(1005 ,"Canva",104 ,201 ,302 ,4.7, 500000000 ,0),
(1006," BYJU'S Learning",105 ,201 ,301 ,4.3 ,100000000 ,299),
(1007 ,"Candy Crush",102 ,204 ,305 ,4.6 ,1000000000 ,0),
(1008 ,"Temple Run" ,104 ,203 ,305 ,4.2 ,500000000 ,0);

select * from Apps;
describe Apps;

#Level 1
# 1.Inserting a New devloper
#insert into Developers(DeveloperID,DeveloperName,Country,FoundedYear) values (106,"OpenAI","USA",2015);

#2.
#insert into Categories() values (306,"artificial Intelligance",12);

alter table Apps
modify AppID INT AUTO_INCREMENT;

alter table Apps
modify AppID INT;

#3.
insert into Apps() values (1009,"Chatgpt",102,201,301,4.6,500000000,0);

#4.
UPDATE Apps SET Rating=4.5 WHERE AppName="Temple Run";

#5.
delete from Developers where DeveloperID= 105;

#Level 2
#1.
update Publishers set SupportMail="samsungsupport@gmail.com" where PublisherName="Samsung Galaxy Store"

#2.
INSERT INTO Apps ()
VALUES
(1010,'BGMI', 102, 204, 305, 4.5, 100000000, 0),
(1011,'FreeFire', 102, 204, 305, 4.4, 1000000000, 0);


#3.
update Apps set Price=199 where AppName="BYJU'S Learning";

#4.
delete from Categories where CategoryName="Music";

#5.
select * from Developers;
select * from Publishers;
select * from Apps;
select * from Categories;




