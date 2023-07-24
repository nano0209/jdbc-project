select * from employees;

-- lets create our own customer table and address table
create table address(
    address_id integer primary key,
    address varchar(50) not null,
    phone integer not null
);
insert into address(address_id, address) values(5,'111', 'Honey way', '123456456');
insert into address(address_id, address) values(7,'111', 'Bony way', '1234567568');
insert into address(address_id, address) values(8,'111', 'Tomy way', '123456456');
insert into address(address_id, address) values(10,'111', 'Molly way', '124326456');
insert into address(address_id, address) values(11,'111', 'Molly way', '124326456890');
select * from address;


create table customer
(
    customer_id integer primary key,
    first_name  varchar(30) not null,
    last_name   varchar(40) not null,
    address_id  integer references address (address_id)
);

        insert into customer(customer_id, first_name, last_name, address_id) values (1, 'Mary', 'Smith');
        insert into customer(customer_id, first_name, last_name, address_id) values (2, 'nano', 'Smith');
        insert into customer(customer_id, first_name, last_name, address_id) values (3, 'Linda', 'Smith');
        insert into customer(customer_id, first_name, last_name, address_id) values (4, 'Barbara', 'Smith');
        insert into customer(customer_id, first_name, last_name, address_id) values (5, 'Ella', 'Smith');


select * from customer;
-- select  first_name, last_name, address, customer.address_id, address.address_id
-- from customer inner join address
--     on customer.Address_id = address_id;