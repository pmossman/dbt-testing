with pokemon as (
  select
    id as pokemon_id,
    name as pokemon_name
  from pokemon
),

move as (
  select name as move_name
  from pokemon_moves_move
),

surfing_pika as (
  select
    pokemon.pokemon_name,
    pokemon.pokemon_id,
    move.move_name

  from pokemon

  inner join move on (pokemon.pokemon_name = 'pikachu' and move.move_name = 'surf')
)

select distinct * from surfing_pika
