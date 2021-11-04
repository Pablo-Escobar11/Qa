create table  employees (
id serial primary key,
employee_name varchar (50) not null
);

insert into employees (id, employee_name)
values (default, 'Pasha');

select * from employees;
--================================
create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary (id, monthly_salary)
values (default, 2500)

select * from salary
--======================================

create table employee_salary (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null
);

insert into employee_salary (id, employee_id, salary_id)
values (default, 40, 15)

select * from employee_salary
--=======================================

create table roles (
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30)

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer')

select * from roles;
--=============================

create table roles_employee (
id serial primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id)
  references employees (id),
foreign key (role_id)
  references roles (id)
)

insert into roles_employee (id, employee_id, role_id)
values (default, 60, 20)

select * from roles_employee