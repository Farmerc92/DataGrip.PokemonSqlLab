# Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.

SELECT poke.name AS "Pokemon Name",
       trainername AS "Trainer Name",
       pokelevel AS "Level",
       attack AS "Atk",
       spatk AS "SpAtk",
       speed AS "Speed",
       typePrimary.name AS "Primary Type",
       typeSecondary.name AS "Secondary Type"
FROM pokemon.trainers AS ash
       LEFT JOIN pokemon_trainer AS p_t ON ash.trainerID = p_t.trainerID
       LEFT JOIN pokemons AS poke ON poke.id = p_t.pokemon_id
       LEFT JOIN types AS typePrimary ON poke.primary_type = typePrimary.id
       LEFT JOIN types AS typeSecondary ON poke.secondary_type = typeSecondary.id
       GROUP BY poke.name, ash.trainername, pokelevel, attack, spatk, speed, typePrimary.name, typeSecondary.name
       ORDER BY AVG(attack + spatk + speed);

#The answer is Supertrainer♀ Garvon with a Rayquaza!  The best pokemon is the pokemon that has the highest average of attack, special attack,
and speed.  Rayquaza probably the highest special attack, attack, and speed in pokemon so this analysis makes sense to me.  Pokemon that can
quickly attack with large numbers will always win.
