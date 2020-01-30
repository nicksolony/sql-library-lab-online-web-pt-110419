INSERT INTO series (title,author_id,subgenre_id) VALUES
("Game of Thrones",1,1),
("Terminator",2,2);

INSERT INTO subgenres (name) VALUES
('fantasy'),
('action');

INSERT INTO authors (name) VALUES
('Geoorge Martin'),
('Alex Pushkin');

INSERT INTO books (title,year,series_id) VALUES
("Game of Thrones 1",1995,1),
("Game of Thrones 2",1996,1),
("Game of Thrones 3",1997,1),
("Terminator 1",1995,2),
("Terminator 2",1996,2),
("Terminator 3",1997,2);

INSERT INTO characters (name,motto, species, author_id) VALUES
('Geoorge Martin','asdasda','human',1),
('Geoorge Martin','asdasda','human',1),
('Geoorge Martin','asdasda','human',1),
('Geoorge Martin','asdasda','human',1),
('Alex Pushkin','asnashasnnas','robot',2),
('Alex Pushkin','asnashasnnas','robot',2),
('Alex Pushkin','asnashasnnas','robot',2),
('Alex Pushkin','asnashasnnas','robot',2);


INSERT INTO character_books (character_id,book_id) VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(4,2),
(5,4),
(5,5),
(5,6),
(6,4),
(6,5),
(6,6),
(7,5),
(8,6);
