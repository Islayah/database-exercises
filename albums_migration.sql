create database if not exists codeup_test_db;

show databases;

use codeup_test_db;

create table if not exists albums (
    id int unsigned not null auto_increment primary key,
    artist varchar(50) not null,
    name varchar(25) not null,
    release_date int unsigned not null,
    sales float unsigned not null,
    genre varchar(20)
);

show tables;

describe albums;

drop table if exists albums;

show tables;

create table if not exists albums (
                                      id int unsigned not null auto_increment primary key,
                                      artist varchar(100) not null,
                                      name varchar(100) not null,
                                      release_date int unsigned not null,
                                      sales float unsigned not null,
                                      genre varchar(100)
);



SHOW CREATE TABLE albums;