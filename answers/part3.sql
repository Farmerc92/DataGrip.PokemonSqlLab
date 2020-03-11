# What is each pokemons primary type?
SELECT primary_type FROM pokemons ORDER BY primary_type;
# Orders all the pokemons by their primary type.

# What is Rufflets secondary type?
SELECT secondary_type FROM pokemons WHERE name = 'Rufflet';
# The type is flying.

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT * FROM trainers WHERE trainerID = 303;
# The answer is Ace Duo Elina and Sean.

# How many pokemon have a secondary type poison?
SELECT * FROM pokemons WHERE secondary_type = 7;
# The answer is 31;

# What are all the primary types and how many pokemon have that type?
SELECT primary_type, count(*) AS c FROM pokemons GROUP BY primary_type;
# 1 is 90, 2 is 95, 3 is 59, 4 is 38, 5 is 38, 6 is 29, 7 is 27, 8 is 61, 9 is 35, 10 is 22, 11 is 19, 12 is 24, 13 is 25, 14 is 38,
# 15 is 19, 16 is 14, 17 is 22, and 18 is 1.

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT * FROM pokemon_trainer WHERE pokelevel = '100';
# The answer is 963.

# How many Pokemon only belong to one trainer and no other?
SELECT pokemon_id, COUNT(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING COUNT(*) = 1;
# The answer is 13.
