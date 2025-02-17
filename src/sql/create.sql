create table person(
    id serial primary key,
    "name" varchar(200) not null,
    age int check (age > 0)
)

insert into person("name", age)
values
('Tom', 20),
('Jerry', 30),
('Jack', 25),
('Jim', 23),
('Jane', 27)

create table item(
    id serial primary key,
    person_id int references person(id) on delete set null,
    item_name varchar(200) not null
)

insert into item(person_id, item_name)
values
(1, 'apple'),
(1, 'banana'),
(2, 'orange'),
(3, 'grape'),
(3,'strawberry'),
(3, 'watermelon')

alter table person add column email varchar(100) unique
