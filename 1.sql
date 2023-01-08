use GT37_38;
create table students (
id integer unique not null primary key auto_increment,
firstname varchar(128) not null ,
lastname varchar(128) not null ,
class integer check(class between 1 and 10),
subjects varchar(128) not null,
mark integer check(mark between 0 and 5)
);
insert into students (firstname,lastname,class,subjects,mark) 
values
('Alyabiev', 'Pavel', 1, 'mathematics',3),
('Arkan', 'Alena', 1,'mathematics',5),
('Beshlyaga', 'Victor',3,'mathematics',0),
('Vakhrushina', 'Veronika',5,'chemistry',4),
('Gabrusev','Andrey', 2, 'history',5),
('Ivanov','Ilya',3,'history',3),
 ('Kim', 'Ksenia', 2,'history',4),
('Mayorova', 'Victoria',4,'physics',5),
('Nevolina', 'Polina',6,'physics',4),
('Petrenko', 'Valeria',5,'chemistry',5),
('Rogacheva', 'Lada',7,'chemistry',3);
select * from students;
set sql_safe_updates=0;
delete from students where mark = 0;
select * from students where mark > 3;
select * from students where class = 1 and mark < 3;
delete from students where class = 1 and mark < 3;
select * from students where lastname like  '%_____';
select * from students where firstname like 'a%___';
select * from students where  (subjects = 'history' and mark > 4) or (class between 7 and 10 and mark = 3 );
drop table  students;

create table employees(
  employeeId  integer primary key  auto_increment,
  fname varchar(128) not null , 
  last_name varchar(128) not null ,
  email varchar(128) not null , 
  phone varchar(128) not null 
 );
 alter table employees
 add salary numeric(9, 2);
 alter table employees
 modify column salary integer;
 alter table employees
 change fname first_name varchar(128);
 alter table employees
 drop column phone;
 alter table employees
 add department varchar(128) not null;
 insert into employees(first_name, last_name, email, salary, department) values("Steven","King", "SKING", 24000, "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Neena" , "Kochhar" , "NKOCHHAR" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Lex" , "De Haan" , "LDEHAAN" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Hunold" , "AHUNOLD" , 9000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Bruce" , "Ernst" , "BERNST" , 6000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Valli" , "Pataballa" , "VPATABAL" , 4800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Diana" , "Lorentz" , "DIANALO" , 8800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Nancy" , "Greenberg" , "NGREENBE" , 12008 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Daniel" , "Faviet" , "DFAVIET" , 9000 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Jose Manuel" , "Urman" , "JMURMAN" , 7800 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Luis" , "Popp" , "LPOPP" , 6900 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Den" , "Raphaely" , "DRAPHEAL" , 11000 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Khoo" , "AKHOO" , 3100 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Shelli" , "Baida" , "SBAIDA" , 2900 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Sigal" , "Tobias" , "STOBIAS" , 2800 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Matthew" , "Weiss" , "MWEISS" , 8000 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Fripp" , "AFRIPP" , 8200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Payam" , "Kaufling" , "PKAUFLIN" , 7900 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Shanta" , "Vollman" , "SVOLLMAN" , 6500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Kevin" , "Mourgos" , "KMOURGOS" , 5800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Julia" , "Nayer" , "JNAYER" , 3200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Markle" , "SMARKLE" , 2200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Bissot" , "LBISSOT" , 3300 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Mozhe" , "Atkinson" , "MATKINSO" , 2800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Joshua" , "Patel" , "JPATEL" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Trenna" , "Rajs" , "TRAJS" , 3500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("John" , "Russell" , "JRUSSEL" , 14000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Karen" , "Partners" , "KPARTNER" , 13500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Alberto" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Gerald" , "Cambrault" , "GCAMBRAU" , 11000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Eleni" , "Zlotkey" , "EZLOTKEY" , 10500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Vargas" , "PVARGAS" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
 select * from  employees
 where department = 'IT' and salary > 1200;
 update employees
 set salary = salary * 5
 where department = 'Human Resources';
  select * from  employees
 where department = 'Marketing' and salary < 2850;
 update employees
 set salary = salary * 10
 where first_name = 'Laura' or first_name = 'Adam';
 update employees
 set last_name = 'King'
 where last_name = 'Lorentz' and first_name = 'Diana';
 delete from  employees
 where department = 'Sales';
 update employees
 set salary = salary + 5000,
      department = 'Marketing'
 where last_name = 'Russell' and first_name = 'John';
 update employees
 set salary = salary / 10
 where first_name = 'Laura' or first_name = 'Adam';
  update employees
 set email = 'BISSOTLAURA'
 where last_name = 'Bissot' and first_name = 'Laura';
 update employees
 set last_name = 'Lorentz', 
      salary = salary + 2000
 where last_name = 'King' and first_name = 'Diana';
 









