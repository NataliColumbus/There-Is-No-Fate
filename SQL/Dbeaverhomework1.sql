
1.Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar(50) unique not null);

select * from employees;

2.Наполнить таблицу 70 строками.

insert into employees(employee_name)
values ('Ivanov Ivan'),
       ('Petrov Petr'),
       ('Pavlov Pavel'),
       ('Dmitriev Dmitriy'),
       ('Aleksandrov Aleksandr'),
       ('Antonov Anton'),
       ('Sergeev Sergey'),
       ('Yakovlev Yakov'),
       ('Fedorov Fedor'),
       ('Vasyliev Vasyliy'),
       ('Vadimov Vadim'),
       ('Kazakov Ivan'),
       ('Karasev Vadim'),
       ('Karganov Ivan'),
       ('Karpov Sergey'),
       ('Kataev Petr'),
       ('Katanaev Sergey'),
       ('Knutzen Vlad'),
       ('Kobelev Ivan'),
       ('Kovaly Zina'),
       ('Kozlova Vera'),
       ('Komisarova Vika'),
       ('Kondakov Aleksey'),
       ('Kornaeva Natalia'),
       ('Kozoeva Irina'),
       ('Paelio Koen'),
       ('Kpupskaya Nadegda'),
       ('Kusnezova Nataliia'),
       ('Baburin Aleksandr'),
       ('Baburkin Petr'),
       ('Baranov Nikita'),
       ('Barash Maksim'),
       ('Bachtin Vladyslav'),
       ('Benvenist Igor'),
       ('Berdugin Gleb'),
       ('Bernshtein Issa'),
       ('Bessonova Maria'),
       ('Boborykin Sergey'),
       ('Botalov Igor'),
       ('Velmysov Gleb'),
       ('Vittmann Inna'),
       ('Voynilovich Sergey'),
       ('Volkova Anna'),
       ('Gagarin Yuriy'),
       ('Gizzatulin Anvar'),
       ('Dzhugaschvily Yakov'),
       ('Erohin Egor'),
       ('Zaks Evgeniy'),
       ('Levina Marina'),
       ('Lombrozzo Julia'),
       ('Luttak Yana'),
       ('Luzzato Viola'),
       ('Livov Lev'),
       ('Menuhina Anna'),
       ('Namov Stas'),
       ('Negodin Slava'),
       ('Nepushin Danil'),
       ('Noskov Nikolay'),
       ('Zaparin Artem'),
       ('Perez Anatoliy'),
       ('Ponasenkov Aleksandr'),
       ('Polyakova Olyga'),
       ('Popov Myhail'),
       ('Porusov Konstsntin'),
       ('Rappoport Julia'),
       ('Nemolyaeva Svetlana'),
       ('Zamyatina Olyga'),
       ('Zalepin Valeriy'),
       ('Zvyagina Nika'),
       ('Zimina Nina');
      
   
     
     
    
 3.Создать таблицу salary2
 
     create table salary2(
id serial primary key,
monthly_salary int not null);

4.Наполнить таблицу 15 строками 
 
    insert into salary2 (monthly_salary)
    values (1000),
           (1100),
           (1200),
           (1300),
           (1400),
           (1500),
           (1600),
           (1700),
           (1800),
           (1900),
           (2000),
           (2100),
           (2200),
           (2300),
           (2400),
           (2500);
          
      5.Cоздать таблицу employee_salary;
          
          create table employees_salary2 (
          id serial primary key,
          id_employee int not null unique,
          id_salary int not null,
          foreign key (id_employee)
          references employees(id),
          foreign key (id_salary)
          references salary2(id) );
         
         
         select * from employees;
        select * from employees_salary2 ;
        select * from salary2;  
          
          6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employees_salary2 (id_employee,id_salary)
values (1,1),
       (8,15),
       (3,1),
       (5,10),
       (2,1),
       (7,5),
       (6,12),
       (9,1),
       (40,4),
       (10,1),
       (4,12),
       (12,1),
       (11,13),
       (16,12),
       (13,10),
       (14,10),
       (19,4),
       (18,7),
       (25,2),
       (23,8),
       (20,11),
       (21,3),
       (27,11),
       (26,1),
       (28,15),
       (39,1),
       (33,13),
       (35,1),
       (31,7),
       (41,1),
       (42,2),
       (48,1),
       (45,9),
       (60,1),
       (70,7),
       (65,1);
       
      7.Создать таблицу roles.
      
      create table roles2 (
      id serial primary key,
      role_name int unique not null
      );
      
       select * from roles2;
     
     8. Поменять тип столбца role_namer с int на varchar(30);
    
    alter table roles2 
    drop column role_name;
   
   alter table roles2
   add column role_name varchar (30) unique not null;
  
  9. Наполнить таблицы roles 20 строками. 
  
  insert into roles2(role_name)
  values ('Junior Python developer'),
         ('Middle Python developer'),
         ('Senior Python developer'),
         ('Junior Java developer'),
         ('Middle Java developer'),
         ('Senior Java developer'),
         ('Junior Javascript developer'),
         ('Middle Javascript developer'),
         ('Senior Javascript developer'),
         ('Junior Manual QA egineer'),
         ('Middle Manual QA egineer'),
         ('Senior Manual QA egineer'),
         ('Project Manager'),
         ('Designer'),
         ('HR'),
         ('CEO'),
         ('Sales Manager'),
         ('Junior Automation QA egineer'),
         ('Middle Automation QA egineer'),
         ('Senior Automation QA egineer');
         
       
     10. Cоздать таблицу roles_employee
        
        create table roles_employee(
        id serial primary key,
        id_employee int unique not null ,
        id_role int not null,
        foreign key(id_employee)
        references employees(id),
        foreign key (id_role)
        references roles2(id));

       11.Наполнить таблицу 40 строками.
       
       insert into roles_employee (id_employee,id_role)
       values (1,13),
              (4,17),
              (8,15),
              (55,16),
              (2,14),
              (3,1),
              (5,1),
              (6,1),
              (7,2),
              (9,2),
              (11,2),
              (10,3),
              (13,3),
              (12,3),
              (15,13),
              (14,14),
              (16,4),
              (17,4),
              (18,4),
              (19,5),
              (20,5),
              (21,5),
              (22,6),
              (24,6),
              (23,6),
              (25,7),
              (26,7),
              (30,7),
              (33,8),
              (36,8),
              (39,8),
              (41,9),
              (45,9),
              (44,10),
              (47,11),
              (50,11),
              (54,12),
              (56,17),
              (58,18),
              (60,19),
              (66,20);
              
              
       
          select * from roles_employee;
           
       
      
         
      
