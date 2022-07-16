/* Populate database with sample data. */

INSERT INTO animals VALUES (1,'Agumon','2020-02-03',0,'1',10.23);
INSERT INTO animals VALUES (2,'Gabumon','2018-11-15',2,'1',8);
INSERT INTO animals VALUES (3,'Pikachu','2021-01-07',1,'0',15.04);
INSERT INTO animals VALUES (4,'Devimon','2017-05-12',5,'1',11);
INSERT INTO animals VALUES(5,'Charmander','2020-02-08',0,'0',11);
UPDATE animals SET weight_kg = -11 WHERE id = 5;
INSERT INTO animals VALUES(6,'Plantmon','2021-11-15',2,'1',-5.7);
INSERT INTO animals VALUES(7,'Squirtle','1993-04-02',3,'0',-12.13);
INSERT INTO animals VALUES(8,'Angemon','2005-06-12',1,'1',-45);
INSERT INTO animals VALUES(9,'Boarmon','2005-06-07',7,'1',20.4);
INSERT INTO animals VALUES(10,'Blossom','1998-10-13',3,'1',17);
INSERT INTO animals VALUES(11,'Ditto','2022-05-14',4,'1',22);

INSERT INTO owners(full_name, age)
VALUES('Sam Smith', 34);
INSERT INTO owners(full_name, age)
 VALUES ('Jennifer Orwell',19);
INSERT INTO owners(full_name, age)
 VALUES ('Bob', 45);
 INSERT INTO owners(full_name, age)
 VALUES('Melody Pond',77);
INSERT INTO owners(full_name, age)
 VALUES('Dean Winchester', 14);
 INSERT INTO owners(full_name, age)
 VALUES('Jodie Whittaker',38);
 INSERT INTO species(name)
 VALUES('Pokemon');
INSERT INTO species(name)
VALUES('Digimon');

UPDATE animals
vet_clinic-# SET species_id = 2
vet_clinic-# WHERE name LIKE '%mon';
UPDATE animals
vet_clinic-# SET species_id = 1
vet_clinic-# WHERE species_id IS NULL;

UPDATE animals
SET owner_id = 1
WHERE name LIKE 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name IN('Pikachu', 'Gabumon' ) ;
UPDATE animals
SET owner_id = 3
WHERE name IN('Devimon', 'Plantmon' ) ;
UPDATE animals
SET owner_id = 4
WHERE name IN('Charmander', 'Squirtle', 'Blossom' ) ;
UPDATE animals
SET owner_id = 5
WHERE name IN('Angemon', 'Boarmon' ) ;

INSERT INTO vets(name,age,date_of_graduation)
VALUES ('William Tatcher', 45,'2000-04-23');
INSERT INTO vets(name,age,date_of_graduation)
VALUES('Maisy Smith', 26,'2019-01-17');
INSERT INTO vets(name,age,date_of_graduation)
VALUES('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets(name,age,date_of_graduation)
VALUES('Jack Harkness', 38,'2008-06-08');

INSERT INTO specializations(species,vets)
VALUES(1,1),(1,3),(2,3),(2,4);
INSERT INTO visits (animals_id, vets_id, date_of_visit) 
            VALUES 
                (1, 1, '2020-05-24'), 
                (1, 3, '2020-07-22'), 
                (2, 4, '2021-02-02'), 
                (3, 2, '2020-01-05'),
                (3, 2, '2020-03-08'),
                (3, 2, '2020-05-14'),
                (4, 3, '2021-05-04'),
                (5, 4, '2021-02-24'),
                (6, 2, '2019-12-21'),
                (6, 1, '2020-06-10'),
                (6, 2, '2021-04-07'),
                (7, 3, '2019-09-29'),
                (8, 4, '2020-10-03'),
                (8, 4, '2020-11-04'),
                (9, 2, '2019-01-24'),
                (9, 2, '2019-05-15'),
                (9, 2, '2020-02-27'),
                (9, 2, '2020-08-03'),
                (10, 3, '2020-05-24'),
                (10, 1, '2021-01-11');
                