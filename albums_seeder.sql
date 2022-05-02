USE codeup_test_db;

show tables;

describe albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 50.2, 'Pop, post-disco, funk, rock');

insert into albums(artist, name, release_date, sales, genre)
VALUES ('Whitney Houston', 'The bodyguard', 1992, 32.4, 'R&B, soul, pop, soundtrack');

insert into albums(artist, name, release_date, sales, genre)
VALUES ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Country rock, soft rock, folk rock');

insert into albums(artist, name, release_date, sales, genre)
VALUES ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock');

insert into albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 50.2, 'Pop, post-disco, funk, rock'),
       ('Whitney Houston', 'The bodyguard', 1992, 32.4, 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock');


