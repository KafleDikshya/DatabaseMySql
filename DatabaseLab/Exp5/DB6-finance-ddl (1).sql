create database finance;

use finance;

-- create table customer
drop table if exists customer;
create table customer
(
	c_id int,
	c_name varchar(100) not null,
	c_id_card char(20) unique not null,
	c_phone char(20) unique not null,
	c_password  char(20) not null,
	primary key(c_id)
);

-- create table bank_card
drop table if exists bank_card;
create table bank_card
(
	b_number char(30),
	b_type char(20),
	b_c_id int not null,
	b_balance decimal(10,2),
	primary key(b_number)
);


-- create table finances_product
drop table if exists finances_product;
create table finances_product
(
	p_id int primary key,
	p_name varchar(100) not null,
	p_description blob,
	p_sale_start_date date,
	p_excu_start_date date,
	p_price decimal(10,2),
	p_year int,
	p_status tinyint
);


-- create table insurance
drop table if exists insurance;
create table insurance
(
	i_id int primary key,
	i_name varchar(100) not null,
	i_price decimal(10,2),
	i_person char(20),
	i_year int,
	i_status tinyint
);

-- create table fund
drop table if exists fund;
create table fund
(
	f_id int primary key,
	f_name varchar(100) not null,
	f_type char(20),
	f_price decimal(10,2),
	risk_level char(20) not null,
	f_manager int not null,
	f_status tinyint
);

-- create table c_finances
drop table if exists c_finances;
create table c_finances
(
	c_id int,
	p_id int,
	p_time datetime,
	p_quantity int ,
	p_purchase_money decimal(10,2),
	p_income decimal(10,2),
	p_total decimal(10,2),
	b_number char(30),
	primary key(c_id, p_id, p_time)
);

-- create table c_insurance
drop table if exists c_insurance;
create table c_insurance 
(
	c_id int,
	i_id int,
	i_time datetime,
	i_quantity int ,
	i_purchase_money decimal(10,2),
	i_income decimal(10,2),
	i_total decimal(10,2),
	b_number char(30),
	primary key(c_id, i_id, i_time)
);

-- create table c_fund
drop table if exists c_fund;
create table c_fund 
(
	c_id int,
	f_id int,
	f_time datetime,
	f_quantity int ,
	f_purchase_money decimal(10,2),
	f_income decimal(10,2),
	f_total decimal(10,2),
	b_number char(30),
	primary key(c_id, f_id, f_time)
);

-- insert into customer
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (1,'Zhangyi','610123199901010001','18815650001','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (2,'Zhangbing','610123199901010002','18815650002','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (3,'Zhangding','610123199901010003','18815650003','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (4,'Zhangjia','610123199901010004','18815650004','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (5,'Zhangwu','610123199901010005','18815650005','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (6,'Zhangji','610123199901010006','18815650006','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (7,'Wangjia','610123199901010007','18815650007','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (8,'Wangyi','610123199901010008','18815650008','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (9,'Wangbing','610123199901010009','18815650009','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (10,'Wangwu','610123199901010010','18815650000','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (11,'Hanjia','610123199901010011','18815650011','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (12,'Hanyi','610123199901010012','18815650012','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (13,'Hanbing','610123199901010013','18815650013','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (14,'Handing','610123199901010014','18815650014','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (15,'Mengwu','610123199901010015','18815650015','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (16,'Mengliu','610123199901010016','18815650016','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (17,'Mengqi','610123199901010017','18815650017','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (18,'Mengba','610123199901010018','18815650018','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (19,'Mengjiu','610123199901010019','18815650019','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (20,'Mengshi','610123199901010020','18815650020','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (21,'Liuchang','610123199901010021','18815650021','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (22,'Liuduan','610123199901010022','18815650022','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (23,'Liurui','610123199901010023','18815650023','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (24,'Liumeng','610123199901010024','18815650024','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (25,'Qingwan','610123199901010025','18815650025','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (26,'Antu','610123199901010026','18815650026','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (27,'Mattingly','610123199901010027','18815650027','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (28,'Vivian','610123199901010028','18815650028','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (29,'Johnson','610123199901010029','18815650029','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (30,'','610123199901010030','18815650030','gaussdb');


-- insert into bank_card
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000001','credit',1, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000002','credit',3, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000003','credit',5, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000004','credit',7, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000005','credit',9, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000006','credit',10, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000007','credit',12, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000008','credit',14, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000009','credit',16, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000010','credit',18, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000011','debit',19, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000012','debit',21, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000013','debit',7, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000014','debit',23, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000015','debit',24, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000016','debit',3, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000017','debit',26, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000018','credit',7, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000019','debit',12, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000020','debit',29, 100);

-- insert into finances_product
insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (1,'Bank of communications bonds','Bank financial products with national debt and financial debt as the main investment direction.', '2019/3/15', '2019/4/15', 100.0, 6, 0);

insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (2,'Bank of Communications credit assets','The purchase of trust assets and the sale of wealth management products to Banks or third-party credit assets.', '2019/3/15', '2019/4/15', 1070.8, 5, 0);

insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (3,'Bank of Communications Commodities','Wealth management products linked to commodity futures.', '2019/3/15', '2019/4/15', 30.1, 5, 0);

-- insert into insurance
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (1,'Ping An Health Insurance',100, 'senior citizen',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (2,'Ping An Life Insurance',200, 'senior citizen',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (3,'Ping An Accident Insurance',50, 'all people',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (4,'Ping An Medical Insurance',300, 'all people',30,1);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (5,'Ping An Property Damage Insurance',100, 'Middle-aged people',30,0);

-- insert into fund
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (1,'Guangfa Automobile Index','Stock',1.1,'High',1,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (2,'Guangfa Bond','Bond',0.89,'Medium',2,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (3,'Guangfa Currency','Currency ',1.78,'Low',3,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (4,'Guangfa Hushen 300 Index ','Index',2.09,'Medium',4,0);

