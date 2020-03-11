#What are all the types of pokemon that a pokemon can have?
SHOW TABLES Pokemon;
SELECT * FROM types;
# The answer is Normal, Water, Grass, Rock, Fire, Ground, Poison, Bug, Electric, Dragon, Steel, Dark, Fighting, Psychic, Ghost, Fairy, Ice, and Flying.

# What is the name of the pokemon with id 45?
SELECT * FROM pokemons WHERE id = 45;
# The answer is Eevee.

# How many pokemon are there?
SELECT * FROM pokemons;
# The answer is 656.

# How many types are there?
SELECT * FROM types;
# The answer is 18.

# How many pokemon have a secondary type?
SELECT * FROM pokemons WHERE secondary_type;
# The answer is 316.
