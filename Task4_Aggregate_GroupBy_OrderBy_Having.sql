-- Level 0

#1.
select count(*) from Apps;

#2.
select AVG(Rating) as avg_rating from Apps;

#3.
select max(Rating) from Apps;

#4.
select min(Rating) from Apps;

#5.
select SUM(Downloads) as Total from Apps;

#6.
select * from Apps order by Rating desc;

-- Level 1
#1.
select CategoryID,count(*) from Apps group by CategoryID;

#2.
select CategoryID,avg(Rating) from Apps group by CategoryID;

#3.
select max(Price) as MAX , min(Price) as MIN from Apps;

#4.
select * from Apps order by  Downloads desc;

#5.
select DeveloperID,count(*) from Apps group by DeveloperID;

#6.
select * from Categories where CategoryID in (select CategoryID from Apps group by CategoryID having count(*) > 1);

-- Level 2
#1.
select DeveloperID , sum(Downloads) from Apps group by DeveloperID;

#2.
select PublisherID , avg(rating) from Apps group by PublisherID;

#3.
select * from Developers where DeveloperID in (select DeveloperID from Apps group by DeveloperID having count(*) > 1);

#4.
select * from Categories where CategoryID in (select CategoryID from Apps group by CategoryID having Avg(Rating) > 4.3);

#5.
select CategoryID ,count(*) from Apps group by CategoryID order by count(*) desc;

#6.
select * from Apps where Rating=( select max(Rating) from Apps);

#7.
select DeveloperID , sum(Price) from Apps group by DeveloperID;
































