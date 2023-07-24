select * from EMPLOYEES;


create table address1 (
    address_id integer primary key,
    address varchar(30) not null,
    phone integer

);

create table customer1(
    c_Id integer primary key ,
    first_name varchar(30) not null,
    last_name varchar(30) not null
);
select * from customer1;

alter table customer1 add Address_id integer references address1(address_id) ;
select * from customer1;

insert into address1( address_id, address, phone) values (5,'1913 Fairfax', 56789965);
commit ;
select * from address1;

insert into address1(address_id, address, phone) values (2, '5678 Vienna', 78976544);
insert into address1(address_id, address, phone) values (4, '435675 way', 7545678);
insert into address1(address_id, address, phone) values (3, '543256 noll', 787644);
insert into address1(address_id, address, phone) values (7, '6543 may', 8909654);

insert into customer1(c_Id, first_name, last_name, address_id) values (2, 'Nurdan', 'Erdigan', 2);
insert into customer1(c_Id, first_name, last_name, address_id) values (4, 'Naima', 'Musaeva', null);
insert into customer1(c_Id, first_name, last_name, address_id) values (3, 'Aytan', 'Movlamov', 3);
insert into customer1(c_Id, first_name, last_name, address_id) values (8, 'Vafa', 'Ismayilzade', null);
insert into customer1(c_Id, first_name, last_name, address_id) values (1, 'Nurida', 'Jafar', 7);
select * from customer1;

drop table customer1;
create table customer1(
    c_Id       integer primary key,
    first_name varchar(30) not null,
    last_name  varchar(30) not null,
    address_id integer references address1 (address_id)
);
select * from customer1;
commit;

select * from customer1 inner join address1 on c_Id = address1.address_id;

select * from customer1 c left join address1 a on c.address_id= a.address_id;













