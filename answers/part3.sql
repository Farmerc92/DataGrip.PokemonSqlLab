# What is each pokemons primary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;

# What is Rufflets secondary type?
SELECT pokemons.name, types.name AS "Secondary Type" FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id WHERE pokemons.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemon_trainer.trainerID, pokemons.name FROM pokemons INNER JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id WHERE pokemon_trainer.trainerID = 303;

# How many pokemon have a secondary type poison?
SELECT * FROM pokemons WHERE secondary_type = 7;

# What are all the primary types and how many pokemon have that type?
SELECT primary_type, count(*) AS c FROM pokemons GROUP BY primary_type;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT COUNT(pokemon_id) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

# How many Pokemon only belong to one trainer and no other?
SELECT pokemon_id, COUNT(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING COUNT(*) = 1;
# The answer is 13.
