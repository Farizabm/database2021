--Task2
create type c_name as(
    first_name varchar(50),
    last_name varchar(50)
);

CREATE TABLE customers(
    customer_id int not null unique primary key,
    name c_name,
    address_of_customers varchar(50) not null ,
    phone_number varchar(50) not null
);

create table package(
    package_id int not null unique primary key,
    type varchar(50) not null,
    weight int not null,
    timeliness varchar(50) not null,
    cost double precision not null
);

ALTER TABLE customers
    add number int;

ALTER TABLE package alter column weight type decimal;

ALTER TABLE package
ADD year_of_dispatch int;

ALTER TABLE package
ADD customer_id int;

ALTER TABLE package
ADD foreign key (customer_id) references customers(customer_id);

create table payment(
    payment_id int not null unique primary key ,
    customer_id int,
    payment_method varchar(50) not null ,
    creditcard_id int not null ,
    foreign key (customer_id) references customers(customer_id)
);

ALTER TABLE payment alter column creditcard_id type varchar(50);

create table vehicle(
    vehicle_id int not null unique primary key ,
    type varchar(50) not null,
    address_departure varchar(50) not null,
    date_of_arrival date not null,
    address_of_customers varchar(50) not null
);

create table tracking(
    status_id int not null unique primary key ,
    vehicle_id int,
    current_address varchar(50) not null,
    foreign key (vehicle_id) references vehicle(vehicle_id)
);


create table delivery(
    delivery_id int not null unique primary key ,
    type varchar(50) not null,
    taken boolean not null ,
    vehicle_id int,
    package_id int,
    foreign key (vehicle_id) references vehicle(vehicle_id),
    foreign key (package_id) references package(package_id)
);

create table delivery_workers(
    workers_id int not null unique primary key ,
    delivery_id int,
    status_id int,
    foreign key (delivery_id) references delivery(delivery_id),
    foreign key (status_id) references tracking(status_id)
);

create table company(
    company_id int not null unique primary key ,
    workers_id int,
    company_name varchar(50) not null,
    rating int not null ,
    foreign key (workers_id) references delivery_workers(workers_id)
);

create table bill(
    customer_id int,
    address varchar(50),
    amount int
           );
--Task3
insert into customers values ('1',row('Fariza','Beisenova'),'Tole bi','87578964556','25');
insert into customers values ('2',row('Aziza','Torekhan'),'Islama Karimova','87572364556','70');
insert into customers values ('3',row('Danagul','Kadyrgaly'),'Aitieva,52','87578968556','52');
insert into customers values ('4',row('Gulgaisha','Konay'),'Tole bi,80','87571234556','80');
insert into customers values ('5',row('Aijan','Maratkyzy'),'Abay,50','87578964123','50');
insert into customers values ('6',row('Damir','Maratov'),'Islama Karimova,7','87512964556','7');
insert into customers values ('7',row('Alisher','Madeniet'),'Tole bi,45','87578823556','45');
insert into customers values ('8',row('Adil','Seitimbetov'),'Islama Karimova,2','87578785556','2');
insert into customers values ('9',row('Rauan','Uzakbayev'),'Mynbaeva,78','87578456556','78');
insert into customers values ('10',row('Baimyrza','Lesbek'),'Islama Karimova,56','87778964556','56');



insert into package values (11,'flat envelope','0.5','2 day','1500',1,'2021');
insert into package values (12,'small box','2','next day','2000',2,'2020');
insert into package values (13,'larger boxes','6','5 day','3500',1,'2021');
insert into package values (14,'flat envelope','1','overnight','1000',3,'2019');
insert into package values (15,'larger boxes','5','1 day','3000',2,'2019');
insert into package values (16,'small box','1','second day','2500',1,'2021');
insert into package values (17,'flat envelope','0.5','3 day','1500',4,'2020');
insert into package values (18,'larger boxes','10','2 day','4500',5,'2020');
insert into package values (19,'larger boxes','8','5 day','3500',1,'2021');
insert into package values (20,'small box','3','2 overnight','1500',4,'2020');


insert into payment values (21,1,'card','1111');
insert into payment values (22,2,'cash','-');
insert into payment values (23,3,'cash','-');
insert into payment values (24,4,'card','1122');
insert into payment values (25,5,'cash','-');
insert into payment values (26,6,'card','1112');
insert into payment values (27,7,'cash','-');
insert into payment values (28,8,'card','1222');
insert into payment values (29,9,'card','1212');
insert into payment values (30,10,'cash','-');


insert into vehicle values (1720,'truck','Taraz,Tole bi,78','15.12.2021','Tole bi,25');
insert into vehicle values (1721,'truck','Askarove,450','25.02.2022','Islama Karimova,70');
insert into vehicle values (1722,'bus','Taraz,Armanova,45','18.12.2021','Aitieva,52');
insert into vehicle values (1723,'car','Aktobe,Kosieva,56','26.01.2022','Turgut Ozala,80');
insert into vehicle values (1724,'truck','Taraz,Panfilova,30','15.03.2022','Abay,50');
insert into vehicle values (1725,'bus','Kostanay, Aimanova,45','05.12.2021','Orbita,7');
insert into vehicle values (1726,'truck','Oral,Keruentau,23','15.02.2022','Mukanova,45');
insert into vehicle values (1727,'car','Shymkent,Karaotkel.69','14.12.2021','Mirzoyan,2');
insert into vehicle values (1728,'truck','Atyrau,Tilendieva,78','30.12.2021','Mynbaeva,78');
insert into vehicle values (1729,'truck','Taraz,Jubanova,15','10.01.2022','Besenova,56');


insert into tracking values (31,1720,'Abieva,56');
insert into tracking values (32,1721,'Karaotkel,45');
insert into tracking values (33,1722,'Mukhtarova,86');
insert into tracking values (34,1723,'Kurmanova,23');
insert into tracking values (35,1724,'Orbita,12');
insert into tracking values (36,1725,'Aimanova,85');
insert into tracking values (37,1726,'Zhandosova,32');
insert into tracking values (38,1727,'Kurmanova,74');
insert into tracking values (39,1728,'Abay,52');
insert into tracking values (40,1729,'Ruslanova,85');

insert into delivery values (41,'by air','yes',1720,11);
insert into delivery values (42,'earthly way','yes',1721,12);
insert into delivery values (43,'by air','yes',1722,13);
insert into delivery values (44,'by air','yes',1721,14);
insert into delivery values (45,'earthly way','yes',1724,15);
insert into delivery values (46,'by air','yes',1725,16);
insert into delivery values (47,'earthly way','yes',1721,17);
insert into delivery values (48,'by air','yes',1727,18);
insert into delivery values (49,'earthly way','yes',1721,19);
insert into delivery values (50,'earthly way','yes',1729,20);


insert into delivery_workers values (51,41,31);
insert into delivery_workers values (52,42,32);
insert into delivery_workers values (53,43,33);
insert into delivery_workers values (54,44,34);
insert into delivery_workers values (55,45,35);
insert into delivery_workers values (56,46,36);
insert into delivery_workers values (57,47,37);
insert into delivery_workers values (58,48,38);
insert into delivery_workers values (59,49,39);
insert into delivery_workers values (60,50,40);

insert into company values (61,51,'Apple','5');
insert into company values (62,52,'asus','4');
insert into company values (63,53,'lenovo','4');
insert into company values (64,54,'acer','4');
insert into company values (65,55,'starlux','3');
insert into company values (66,56,'master chef','2');
insert into company values (67,57,'huawei','4');
insert into company values (68,58,'samsung','4');
insert into company values (69,59,'indizit','3');
insert into company values (70,60,'cisco','2');

--Task4
--1
SELECT c.name, c.phone_number, d.vehicle_id,p.package_id, p.type
FROM package as p
         inner join customers as c on p.customer_id = c.customer_id
         inner join delivery as d on p.package_id = d.package_id
where vehicle_id=1721;
--2
SELECT package.customer_id, COUNT(package_id)
    FROM package
    group by package.customer_id
    HAVING count(package_id) > 1
    ORDER BY COUNT(package_id);
--3
SELECT package.customer_id, sum(cost)
    FROM package
    group by package.customer_id
    ORDER BY sum(cost);
--4
SELECT customers.address_of_customers, count(customer_id)
    FROM customers
    group by customers.address_of_customers
    HAVING count(customer_id) > 1
    ORDER BY sum(customer_id) desc ;
--5
CREATE OR REPLACE FUNCTION bill() RETURNS trigger AS
    $$
    BEGIN
    Insert into bill values(customer_id, name)
    end;
    $$ language plpgsql;

CREATE trigger a
    AFTER INSERT on payment or customer
    FOR EACH ROW execute bill();