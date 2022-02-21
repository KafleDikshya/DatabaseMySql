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
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (1,'��һ','610123199901010001','18815650001','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (2,'�Ŷ�','610123199901010002','18815650002','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (3,'����','610123199901010003','18815650003','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (4,'����','610123199901010004','18815650004','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (5,'����','610123199901010005','18815650005','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (6,'����','610123199901010006','18815650006','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (7,'����','610123199901010007','18815650007','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (8,'�Ű�','610123199901010008','18815650008','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (9,'�ž�','610123199901010009','18815650009','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (10,'��ʮ','610123199901010010','18815650000','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (11,'��һ','610123199901010011','18815650011','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (12,'���','610123199901010012','18815650012','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (13,'����','610123199901010013','18815650013','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (14,'����','610123199901010014','18815650014','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (15,'����','610123199901010015','18815650015','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (16,'����','610123199901010016','18815650016','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (17,'����','610123199901010017','18815650017','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (18,'���','610123199901010018','18815650018','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (19,'���','610123199901010019','18815650019','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (20,'��ʮ','610123199901010020','18815650020','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (21,'��һ','610123199901010021','18815650021','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (22,'����','610123199901010022','18815650022','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (23,'����','610123199901010023','18815650023','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (24,'����','610123199901010024','18815650024','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (25,'����','610123199901010025','18815650025','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (26,'����','610123199901010026','18815650026','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (27,'����','610123199901010027','18815650027','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (28,'����','610123199901010028','18815650028','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (29,'����','610123199901010029','18815650029','gaussdb');
insert into customer(c_id,c_name,c_id_card,c_phone,c_password) values (30,'��ʮ','610123199901010030','18815650030','gaussdb');


-- insert into bank_card
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000001','���ÿ�',1, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000002','���ÿ�',3, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000003','���ÿ�',5, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000004','���ÿ�',7, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000005','���ÿ�',9, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000006','���ÿ�',10, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000007','���ÿ�',12, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000008','���ÿ�',14, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000009','���ÿ�',16, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000010','���ÿ�',18, 0);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000011','���',19, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000012','���',21, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000013','���',7, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000014','���',23, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000015','���',24, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000016','���',3, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000017','���',26, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000018','���ÿ�',7, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000019','���',12, 100);
insert into bank_card(b_number,b_type,b_c_id,b_balance) values ('6222021302020000020','���',29, 100);

-- insert into finances_product
insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (1,'����ծȯ','�Թ�ծ������ծΪ��ҪͶ�ʷ����������Ʋ�Ʒ��', '2019/3/15', '2019/4/15', 100.0, 6, 0);

insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (2,'�����Ŵ��ʲ�','�������ʲ�������Ʋ�Ʒ�������л�������Ŵ��ʲ���', '2019/3/15', '2019/4/15', 1070.8, 5, 0);

insert into finances_product(p_id,p_name,p_description,p_sale_start_date, p_excu_start_date, p_price,p_year, p_status) 
values (3,'����������Ʒ','�������Ʒ�ڻ��ҹ�����Ʋ�Ʒ��', '2019/3/15', '2019/4/15', 30.1, 5, 0);

-- insert into insurance
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (1,'ƽ����������',100, '����',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (2,'ƽ�����ٱ���',200, '����',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (3,'ƽ�����Ᵽ��',50, '������',30,0);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (4,'ƽ��ҽ�Ʊ���',300, '������',30,1);
insert into insurance(i_id,i_name,i_price,i_person,i_year,i_status) values (5,'ƽ���Ʋ���ʧ����',100, '������',30,0);

-- insert into fund
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (1,'�㷢����ָ��','��Ʊ��',1.1,'��',1,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (2,'�㷢ծȯ','ծȯ��',0.89,'��',2,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (3,'�㷢����','������',1.78,'��',3,0);
insert into fund(f_id,f_name,f_type,f_price,risk_level,f_manager,f_status) values (4,'�㷢����300ָ��','ָ����',2.09,'��',4,0);

