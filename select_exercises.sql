use albums_db;
show tables;
describe albums;
select * from albums;
select count(*) from albums;
-- how many rows^^^^^^^
select count(distinct artist)
from albums;
-- unique artists^^^^^^^^^
show keys from albums where key_name = 'primary';
select min(release_date) from albums;
select max(release_date) from albums;

-- how many rows?
-- 31
-- how many unique artist names are in each table?
-- 23
-- what is primary key?
-- id
-- what is the oldest release date? what is the most current?
-- 2011. 1967.

select *
from albums
where artist = "pink floyd";
select * from albums where artist = "the beatles";
select genre
from albums
where name = "nevermind";
select *
from albums
where release_date between '1990' and '1999';
select * from albums where sales < 20;
select * from albums where genre = "rock";
-- more exact search^^^^^^^^^^^
select * from albums where genre like "%rock%";
-- more broad because of %LIKE%
/* a. The name of all albums by Pink Floyd
The dark side of the moon, The Wall
b. The year Sgt. Pepper's Lonely Hearts Club Band was released
1967
c. The genre for the album Nevermind
grunge, alt rock
d. Which albums were released in the 1990s
id 5,12,13,14,19,21,22,26,27,28,30
e. Which albums had less than 20 million certified sales
id 9, 11, 15, 17, 19, 21, 22, 23, 24, 25, 26, 28, 29
f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"? 
id 15, 20, 23, 24, 30 // 
*/
