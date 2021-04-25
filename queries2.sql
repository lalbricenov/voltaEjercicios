INSERT into keywords (word)
VALUES ("test"),
    ("fisica"),
    ("2 Liceo");
INSERT INTO assets (name, type, url)
VALUES (
        'hyunday',
        'Image',
        'https://www.hyundai.com/content/hyundai/ww/data/news/data/2021/0000016609/image/newsroom-0112-photo-1-2021elantranline-1120x745.jpg'
    ),
    (
        'corvette',
        'Image',
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-chevrolet-corvette-z06-1607016574.jpg?crop=0.737xw:0.738xh;0.181xw,0.218xh&resize=640:*'
    );
ALTER TABLE problems
ADD name text NOT NULL;
INSERT INTO problems (name)
VALUES ('Carro Hyunday'),
    ('Carro chevrolet');
INSERT INTO keywordAssignments (problemId, keywordId)
VALUES (1, 1),
    (1, 2);