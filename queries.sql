/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT name FROM animals WHERE neutered ='1' AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon','Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = '1';
SELECT * FROM animals WHERE name NOT LIKE '%Gabumon% ;
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND  17.3;
SELECT COUNT(*) FROM animals;
SELECT escape_attempts, COUNT(*)
FROM animals
GROUP BY escape_attempts
HAVING escape_attempts = '0';
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts)
FROM animals
GROUP BY neutered;
SELECT species, MIN(weight_kg),MAX(weight_kg)
FROM animals
GROUP BY species;
SELECT species, AVG(escape_attempts)
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01'
GROUP BY species;

SELECT name FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.id = 4;
SELECT animals.name, animals.species_id, species.name FROM animals
JOIN species ON animals.species_id = species.id
WHERE species.id = 1;
SELECT full_name ,name FROM owners
LEFT JOIN animals
ON animals.owner_id = owners.id;
SELECT species.name, COUNT(animals.species_id) FROM animals
JOIN species ON animals.species_id = species.id GROUP BY species.name;
SELECT animals.name FROM animals
vet_clinic-# JOIN owners
vet_clinic-# ON animals.owner_id = owners.id
vet_clinic-# WHERE species_id =2 AND owners.id=2;
SELECT animals.name FROM animals
JOIN owners
ON animals.owner_id = owners.id
WHERE owners.id = 5 AND animals.escape_attempts=0;

SELECT owners.full_name, COUNT(animals.owner_id) AS total_animals FROM animals
JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT(*) DESC;