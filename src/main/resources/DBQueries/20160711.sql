create or replace procedure update_card_by_id
(
  in_card_id in int,
  in_card_name in VARCHAR2 default null,
  in_card_cost in int default null,
  in_card_rarity in VARCHAR2 default null,
  in_card_type in VARCHAR2 default null
)
as
 v_name varchar2(100);
 v_cost int;
 v_rarity varchar2(100);
 v_type varchar2(100);
begin
  select card_name,
         card_elixir_cost,
         CARD_RARITY,
         CARD_TYPE
  into
      v_name,
      v_cost,
      v_rarity,
      v_type
  from CLASHROYAL_CARDS
  where card_id = in_card_id;

  if v_name != in_card_name AND in_card_name is not null then
    v_name := in_card_name;
  end if;
  if v_cost != in_card_cost AND in_card_cost is not null then
    v_cost := in_card_cost;
  end if;
  if v_rarity != in_card_rarity AND in_card_rarity is not null then
    v_rarity := in_card_rarity;
  end if;
  if v_type != in_card_type AND in_card_type is not null then
    v_type := in_card_type;
  end if;

  update CLASHROYAL_CARDS
  set
    card_name = v_name,
    card_elixir_cost = v_cost,
    CARD_RARITY = v_rarity,
    CARD_TYPE = v_type
  where CARD_ID = in_card_id;
end;

exec update_card_by_id (28, null, null, 'Common', 'Troop');
Commit;