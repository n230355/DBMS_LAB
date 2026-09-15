# Level 0
#1.
alter table Apps add constraint DeveloperID foreign key(DeveloperID) references Developers(DeveloperID);

#2.
alter table Apps add constraint PublisherID foreign key(PublisherID) references Publishers(PublisherID);

#3.
alter table Apps add constraint CategoryID foreign key(CategoryID) references Categories(CategoryID);

#5
select * from Apps where Rating>4.5;

#6.
select * from Apps where Price=0;

-- Level 1
#1.
select * from Apps where downloads > 500000000;

#2.
select * from Apps where Rating between 4.3 and 4.7;

#3.
select * from Apps where Price=0 or Price =299;

#4.
select * from Apps where AppName like "G%";

#5.
select * from Apps where AppName like "%Google%";

#6.
select * from Apps where downloads > 500000000 and Rating > 4.0;

#7.
select * from Apps where CategoryID=301 or CategoryID=305;

-- Level 2
#1.
select * from Apps where AppName not like "G%";

#2.
select * from Apps where downloads > 1000000000 and Rating < 4.5;

#3.
select DeveloperName from Developers where DeveloperName like "%a%";

#4.
select * from Apps where Price between 0 and 300;

#5.
select * from Apps where PublisherID=201 or PublisherID=204;

#6.
insert into Apps values (143, "X" , 108,201,306,5.0,1000000000,0); # cant add a child row with Foreign key(DeveloperID) not in Developers.DeveloperID

#7.
select * from Apps where CategoryID <> 305;




















