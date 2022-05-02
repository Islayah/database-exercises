use codeup_test_db;

select 'Albums released after 1991' as 'info';
# select name from albums where release_date > 1991;
delete from albums where release_date > 1991;

select 'Genre is disco' as 'info';
# select name from albums where genre = 'disco';
delete from albums where genre = 'disco';

select 'Put the pipe down' as 'info';
# select name from albums where artist = 'Whitney Houston';
delete from albums where artist = 'Whitney Houston';

