USE atelier_bd;

CREATE TABLE IF NOT EXISTS band
(
    bandName varchar(50),
    creation YEAR,
    genre    varchar(50),
    PRIMARY KEY (bandName)
);

INSERT INTO band
VALUES ('Crazy Duo', 2015, 'rock'),
       ('Luna', 2009, 'classical'),
       ('Mysterio', 2019, 'pop');

ALTER TABLE singer RENAME COLUMN singerName TO musicianName;
ALTER TABLE singer
    ADD COLUMN (role varchar(50));

ALTER TABLE singer RENAME TO musician;

ALTER TABLE musician
    ADD COLUMN (bandName varchar(50) REFERENCES band (bandName));

# Add band name
UPDATE musician
SET bandName='Crazy Duo'
WHERE musicianName = 'Alina';

UPDATE musician
SET bandName='Mysterio'
WHERE musicianName = 'Mysterio';

UPDATE musician
SET bandName='Crazy Duo'
WHERE musicianName = 'Rainbow';

UPDATE musician
SET bandName='Luna'
WHERE musicianName = 'Luna';

# Add role
UPDATE musician
SET role='vocals'
WHERE musicianName = 'Alina';

UPDATE musician
SET role='guitar'
WHERE musicianName = 'Mysterio';

UPDATE musician
SET role='percussion'
WHERE musicianName = 'Rainbow';

UPDATE musician
SET role='piano'
WHERE musicianName = 'Luna';


