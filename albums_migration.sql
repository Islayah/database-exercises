create database if not exists codeup_test_db;

show databases;

use codeup_test_db;

create table albums (
    id int unsigned not null auto_increment primary key,
    artist varchar(50) not null,
    name varchar(25) not null,
    release_date date not null,
    sales float not null,
    genre varchar(20) not null
);

show tables;

describe albums;

SHOW CREATE TABLE albums;