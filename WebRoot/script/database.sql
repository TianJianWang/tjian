
 create database projectTwo;
 use projectTwo;

 create table project(
 pro_id int  primary key auto_increment,
 pro_title varchar(50),
 pro_wantedMoney int,
 pro_startDate date,
 pro_endDate date,
 userId int,
 pro_info text,
 pro_picture varchar(100),
 pro_type varchar(10)
 );

create table sale_pre(
pre_id int primary key auto_increment,
pro_id int,
type_post varchar(10),
pre_money int,
pre_limit int,
pre_info text,
constraint fk_pre_id_pro_id foreign key(pro_id) references
project(pro_id));

create table user(
user_id int primary key auto_increment,
email varchar(50),
password varchar(20),
nickname varchar(20),
realname varchar(20),
idcard varchar(20),
user_address varchar(100),
user_picture varchar(50),
profession varchar(20),
user_info varchar(200),
weibo varchar(20)
);

 create table finance(
 finance_id int primary key auto_increment,
 pro_id int ,

 income int,
 outcome int,
 bonus int,
 constraint fk_pro_id_pro_id foreign key
 (pro_id) references project(pro_id)
 );

 create table finance_item(
 item_id int primary key auto_increment,
 finance_id int,
 item_thing varchar(50),
 item_money int,
item_type varchar(4),
 item_time date,
 item_person varchar(20),
 invoice_pic varchar(50),
 constraint fk_finance_id_finance_id foreign key(
 finance_id) references finance(finance_id));

 create table service(
 ser_id int primary key auto_increment,
 com_name varchar(50),
 score int,
 com_info text,
short_info varchar(500),
 com_url varchar(300)
 );  