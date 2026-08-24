use playstore
-- level 0
select upper(DeveloperName) from developers;

select lower(DeveloperName) from developers;
select length(AppName) from apps;
select CategoryName,length(CategoryName) from Categories;
select current_date(),current_time();
select round(Rating,0) from apps;

-- Level 1

select substring(AppName,1,5),AppName from apps;
select concat(DeveloperName, ' ' , Country) from Developers;
select round(Rating,1) from apps;
select ceil(Price) from apps;
select FoundedYear from developers;
select convert(Downloads,char) from apps; 

-- level2
select upper(AppName),Rating from apps;
select substring(CategoryName,1,3) from Categories;
select abs(Price - 200) from apps;
select DeveloperName , length(DeveloperName) from developers;
select  current_date(),current_timestamp();
select cast(Rating as char) from apps;



