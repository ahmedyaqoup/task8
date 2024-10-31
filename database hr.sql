create schema hr

create table hr.regions(
region_id int primary key,
region_name varchar(25)
)

create table hr.countries(
country_id varchar(2) primary key ,
country_name varchar(40) ,
region_id int ,
foreign key (region_id) references hr.regions(region_id) 
)
create table hr.locations(
location_id int primary key ,
street_address varchar(25) ,
postal_code varchar(12) ,
city varchar(30),
state_province varchar(12),
country_id varchar(2) ,
foreign key (country_id) references hr.countries(country_id) 
)

create table hr.departments(
department_id int primary key,
department_name varchar(30),
manager_id int  ,
location_id int ,
foreign key (location_id) references hr.locations (location_id)
)



create table hr.jops(
jop_id varchar(10) primary key,
jop_title varchar(35),
min_salary int ,
max_salary int 
)

create table hr.employees(
employee_id int primary key ,
first_name varchar(20) ,
last_name varchar(25),
email varchar(25) ,
phone_number varchar(20) ,
hire_date date ,
jop_id varchar(10),
salary int ,
commission_pct int ,
manager_id int ,
department_id int,
foreign key (jop_id) references hr.jops(jop_id) ,
foreign key (department_id) references hr.departments(department_id)
)

create table hr.jop_history(
employee_id int not null,
start_date date not null ,
end_date date ,
jop_id varchar(10) ,
department_id int,
primary key (employee_id ,start_date),
foreign key (employee_id) references hr.employees (employee_id) ,
foreign key (jop_id) references hr.jops (jop_id) ,
foreign key (department_id) references hr.departments (department_id) 
)

create table jop_grades(
grade_level varchar(2)  primary key,
lowest_sal int ,
high_sal int
)