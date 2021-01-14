DROP DATABASE IF EXISTS Employee_Tracker;

CREATE DATABASE Employee_Tracker;

USE Employee_Tracker;

CREATE TABLE department(
id integer auto_increment not null,
name varchar(30) not null,
primary key(id)
);

CREATE TABLE role(
id integer auto_increment not null,
title varchar(30) not null,
salary decimal not null,
department_id Integer not null,
constraint fk_department_id foreign key (department_id) references department(id),
primary key(id)
);


CREATE TABLE employee(
id integer auto_increment not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
role_id integer not null,
constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
manager_id integer ,
constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
Primary key(id)
);

select * from employee;
select * from role;
select * from department;

INSERT into department (name)
VALUES ("Sales");
INSERT into department (name)
VALUES ("Engineering");
INSERT into department (name)
VALUES ("Finance");
INSERT into department (name)
VALUES ("HR");
INSERT into department (name)
VALUES ("Manager");

select * from department;

INSERT into role (title, salary, department_id)
VALUES ("Sales Lead", 55000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Sales", 40000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Engineer", 70000, 2);
INSERT into role (title, salary, department_id)
VALUES ("Accountant", 45000, 3);
INSERT into role (title, salary, department_id)
VALUES ("HR", 50000, 4);
INSERT into role (title, salary, department_id)
VALUES ("Manager", 75000, 5);

select * from role;

INSERT into employee (first_name, last_name, role_id)
values ("Kevin", "Malone", 3); 
INSERT into employee (first_name, last_name, role_id)
values ("Toby", "Flenderson", 4);
INSERT into employee (first_name, last_name, role_id)
values ("Micheal", "Scott", 5);
INSERT into employee (first_name, last_name, role_id)
values ("Dwight", "Schrute", 1);
INSERT into employee (first_name, last_name, role_id)
values ("Darryl", "Philbin", 2);
INSERT into employee (first_name, last_name, role_id)
values ("Jim", "Halpert", 1);

select * from employee;