use codeup_test_db;

select 'All albums in your table' as 'info';
select name from albums;
# Can use sales = sales * 10;
update albums set sales = (sales * 10) ;
select sales from albums;

select 'All albums released before 1980' as 'info';
select name from albums where release_date < 1980;
update albums set release_date = 1800 where release_date < 1980;
select release_date from albums;


select 'All Michael Jackson albumbs' as 'info';
select name from albums where artist = 'Michael Jackson';
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select artist from albums;