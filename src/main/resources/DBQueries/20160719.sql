select * from employees;
truncate table employees;

CREATE OR REPLACE PROCEDURE reset_all_cards AS
BEGIN
      execute immediate 'truncate table CLASHROYAL_CARDS';
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Skeletons', 1, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Ice Spirit', 1, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Goblins', 2, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Spear Goblins', 2, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Knight', 3, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Archers', 3, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Arrows', 3, 'Common', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Bomber', 3, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Cannon', 3, 'Common', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Tesla', 4, 'Common', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Mortar', 4, 'Common', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Barbarians', 5, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Minion Horde', 5, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Tombstone', 3, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Fireball', 4, 'Rare', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Furnace', 4, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Musketeer', 4, 'Rare', 'Troop');
      insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Mini PEKKA', 4, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Hog Rider', 4, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Giant', 5, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Wizard', 5, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Bomb Tower', 5, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Inferno Tower', 5, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Goblin Gut', 5, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Rocket', 6, 'Rare', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Barbarian Hut', 7, 'Rare', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Three Musketeers', 9, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Mirror', 0, 'Epic', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Guards', 3, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Rage', 3, 'Epic', 'Spell');
      insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Goblin Barrel', 3, 'Epic', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Dark Prince', 4, 'Epic', 'Troop');
      insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Baby Dragon', 4, 'Epic', 'Troop');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Skeleton Army', 4, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Freeze', 4, 'Epic', 'Spell');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Poison', 4, 'Epic', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Prince', 5, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Witch', 5, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Balloon', 5, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Bowler', 6, 'Epic', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Giant Skeleton', 6, 'Epic', 'Troop');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'X-Bow', 6, 'Epic', 'Building');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Lightning', 6, 'Epic', 'Spell');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'PEKKA', 7, 'Epic', 'Troop');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Golem', 8, 'Epic', 'Troop');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'The Log', 2, 'Legendary', 'Spell');
       insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Lava Hound', 7, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Sparky', 6, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Princess', 3, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Ice Wizard', 3, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Lumberjack', 4, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Miner', 3, 'Legendary', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Royal Giant', 6, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Fire Spirits', 2, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Zap', 2, 'Common', 'Spell');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Minions', 3, 'Common', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Valkyrie', 4, 'Rare', 'Troop');
      insert  into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE) values(card_sequence.nextval, 'Elixir Collector', 5, 'Rare', 'Building');
      Commit;
      
END reset_all_cards;

exec reset_all_cards();

select * from CLASHROYAL_CARDS;

Commit;
