use codeup_test_db;

select 'All albums by Pink Floyd' as 'info';
select name from albums where artist = 'Pink Floyd';

select 'Year released' as 'info';
select release_date from albums where name = 'Sgt. Pepper\'\s Lonely Hearts Club Band';

select 'Genre' as 'info';
select genre from albums where name = 'Nevermind';

select 'Albums released in the 90s' as 'info';
select name from albums where release_date between 1990 and 1999;

select 'Less than 20million sales' as 'info';
select name from albums where sales < 20;

select 'Genre of Rock' as 'info';
select name from albums where genre = 'Rock';

