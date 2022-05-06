use employees;

describe departments;
describe dept_emp;
describe dept_manager;
describe employees;
describe salaries;
describe titles;

use codeup_test_db;

create table if not exists test (
    id int not null,
    name varchar(100) not null,
    arist varchar(100) not null,
    primary key (id),
    unique (name, arist)
);

describe test;
select arist from test;

# Walkthrough code
use codeup_test_db;

alter table albums add unique (artist, name);

insert into albums(artist, name, release_date, sales, genre) values ('Michael Jackson', 'Thriller', '1982', 50.2, 'Pop');

select * from albums;



# Exercise Goals
# Explore the indexes in the employees database
# Add a unique constraint to our test database
#
# USE your employees database.
#
# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
#
# USE your codeup_test_db database.
#
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.