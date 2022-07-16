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
JOIN owners
ON animals.owner_id = owners.id
WHERE species_id =2 AND owners.id=2;

SELECT animals.name FROM animals
JOIN owners
ON animals.owner_id = owners.id
WHERE owners.id = 5 AND animals.escape_attempts=0;

SELECT owners.full_name, COUNT(animals.owner_id) AS total_animals FROM animals
JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT(*) DESC;

SELECT animals.name, vets.name, date_of_visit
FROM visits
JOIN animals ON animals.id = animals_id
JOIN vets ON vets.id = vets_id
WHERE vets.name LIKE '%William Tatcher%'
ORDER BY date_of_visit DESC LIMIT 1;

SELECT vets.name, COUNT(animals_id)
FROM visits
JOIN animals ON animals.id = animals_id
JOIN vets ON vets.id = vets_id
WHERE vets.name LIKE '%Stephanie Mendez%'
GROUP BY vets.name;

SELECT vets.name, species.name
FROM vets
LEFT JOIN specializations ON vets = vets.id
LEFT JOIN species ON species = species.id;

SELECT animals.name
FROM visits
JOIN animals ON animals_id = animals.id
JOIN vets ON vets_id = vets.id
WHERE date_of_visit BETWEEN '2020-4-1' AND '2020-8-30' AND vets.name LIKE '%Stephanie Mendez%'
ORDER BY animals.name;

SELECT animals.name, COUNT(animals.name)
FROM visits
JOIN animals ON animals_id = animals.id
JOIN vets ON vets_id = vets.id
GROUP BY animals.name
ORDER BY COUNT(animals.name) DESC LIMIT 1;

SELECT animals.name, visits.date_of_visit 
FROM visits 
JOIN animals ON visits.animals_id = animals.id 
WHERE vets_id = 2 
ORDER BY date_of_visit 
ASC LIMIT 1;

SELECT 
    animals.name as AnimalName, 
    animals.date_of_birth, 
    animals.escape_attempts, 
    animals.neutered, 
    animals.weight_kg, 
    species.name as SpecieType, 
    owners.full_name as OwnersName, 
    vets.name as VetsName, 
    vets.age as VetsAge, 
    vets.date_of_graduation, 
    visits.date_of_visit 
FROM animals 
JOIN 
    species ON animals.species_id = species.id 
JOIN 
    owners ON animals.owner_id = owners.id 
JOIN 
    visits ON animals.id = visits.animals_id 
JOIN 
    vets ON visits.vets_id = vets.id 
ORDER BY 
    visits.date_of_visit 
DESC 
LIMIT 1; 

SELECT COUNT(vets.id)
FROM visits
JOIN animals ON visits.animals_id = animals.id
JOIN vets ON visits.vets_id = vets.id
JOIN specializations ON vets.id = specializations.vets
WHERE animals.species_id != specializations.species;


      