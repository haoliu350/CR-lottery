select * from CLASHROYAL_CARDS;

select card_name, CARD_RARITY, card_elixir_cost,
        (row_number() over (PARTITION by card_elixir_cost order by CARD_RARITY)) rn_cost
from CLASHROYAL_CARDS
where card_elixir_cost  = 3
order by card_name;


select card_name, CARD_RARITY, card_elixir_cost,
        (row_number() over (partition by CARD_ELIXIR_COST order by card_name)) rn
from CLASHROYAL_CARDS
where CARD_RARITY = 'Epic';

