create table department(
dept_id int primary key , 
dept_name varchar(35)
);

create table student ( 
stu_id int primary key,
first_name varchar(30),
last_name varchar(30),
dept_id int,
fee int,
foreign key(dept_id) references department(dept_id)
);

create table fees (
stu_id int primary key references student(stu_id),
fee int references student(fee),
paid_fee int,
balance int
);
