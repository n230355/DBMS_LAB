-- Level 0

#1.
update Apps set rating=5 where AppName like "Google Keep";
commit;

#2.
Start transaction;
update Apps set price=300 where AppName like ' BYJU''S Learning';
rollback;

#3.
start transaction;
insert into Apps values (1012,"Asphalt Legends",104,201,302,4.8,10000000000,0);
commit;

#4.
start transaction;
insert into Developers values(107,'Unio' , 'India',2026);
select * from Developers;
rollback;
select * from Developers;

#5.
start transaction;
update Apps set rating=3 where AppName like "Google Keep";
savepoint A;     

#6.
start transaction;
update Apps set rating=5 where AppName like " Google Keep";
savepoint D;

update Apps set rating=3 where AppName like ' BYJU''S Learning';
savepoint B;


#2.
start transaction;
update Apps set rating=2 where AppName like " Google Keep";
savepoint D;

update Apps set rating=9 where AppName like ' BYJU''S Learning';
rollback to D;

#3.
start transaction;
insert into Apps values (1013,"Claude",102,203,302,4.8,10000000000,200);

savepoint X;

update Apps set Price= 211 where AppID=1013;
Rollback to X;
select * from Apps;

#4.
CREATE USER 'MINE'@'localhost'
IDENTIFIED BY 'mine123';

CREATE USER 'venu'@'10.190.245.70'
IDENTIFIED BY 'venu123';

grant select
ON playstore.Apps
TO 'venu'@'10.190.245.70';

#5.
grant select , insert on playstore.Apps to 'MINE'@'localhost';

#6.
Revoke select on Apps from 'MINE'@'localhost';

-- Level 02
#1.
start transaction;
update Apps set price=10 where AppID=1001;
savepoint A;

update Apps set Rating=5.2 where AppID=1001;
savepoint B;

update Apps set price=1000 where AppID=1011;

rollback to B;
rollback to A;
rollback;
select * from APPS;

#2.
start transaction;
insert into Categories values(307,"Fun",4);
savepoint A;

insert into Categories values (308,"Study",5);

rollback to A;
select * from Categories;

#3.
Grant select,insert,update on Apps to 'venu'@'10.190.245.70';

#4.
revoke update on Apps from 'venu'@'10.190.245.70';

#5.
Grant select on Developers to 'venu'@'10.190.245.70';

revoke select on Developers from 'venu'@'10.190.245.70';

#6.
start transaction;
update Apps set AppName="Google Keeper" where AppID=1001;

delete from Apps where AppID=1012;
commit;

#07.
start transaction;
update apps set rating = 5.0 where AppId = 1002;

select * from apps where AppID = 1002;

rollback;
select * from apps where AppID = 1002;

#
start transaction;

update Apps set rating = 5.0 where AppID= 1003;

select * from Apps where AppID = 1003;

commit;

select * from apps where AppID = 1003;




