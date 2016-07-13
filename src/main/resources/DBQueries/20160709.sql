CREATE TABLE Employees
(
Emp_Id int,
LastName varchar(100),
FirstName varchar(100),
Address varchar(200),
City varchar(255)
);

SELECT *
FROM Employees;

insert into Employees (Emp_Id, LastName, FirstName, Address, City)
values (15,'Haaaaha','Oooooooo', '1 meridian Blvd', 'Wyomissing');

update Employees set FIRSTNAME='Bbvbbbbb' where EMP_ID=15;

SET SERVEROUTPUT ON;

rollback;

commit;


CREATE TABLE CLASHROYAL_CARDS
(
CARD_ID int,
CARD_NAME varchar(100),
CARD_ELIXIR_COST int
);

Create sequence card_sequence start with 1
increment by 1
minvalue 1
maxvalue 10000;

select *
from CLASHROYAL_CARDS;

insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE)
values(card_sequence.nextval, 'Zap', 2, 'Common', 'Spell');

delete

create or replace procedure insert_one_cr_card
(
  CARD_NAME in varchar,
  CARD_ELIXIR_COST in int,
  CARD_RARITY in varchar,
  CARD_TYPE in varchar
)
as
begin
  insert into CLASHROYAL_CARDS(card_id, card_name, card_elixir_cost, CARD_RARITY, CARD_TYPE)
  values(card_sequence.nextval, CARD_NAME, CARD_ELIXIR_COST, CARD_RARITY, CARD_TYPE);
end;

exec insert_one_cr_card (CARD_NAME => 'Ice Spirit', CARD_ELIXIR_COST => 1, CARD_RARITY =>'Common', CARD_TYPE =>'Troop');

ALTER TABLE CLASHROYAL_CARDS
  ADD (CARD_RARITY varchar(100),
       CARD_TYPE varchar(100));

update CLASHROYAL_CARDS set CARD_RARITY='Common', CARD_TYPE='Troop' where CARD_ID=1;
update CLASHROYAL_CARDS set CARD_RARITY='Epic', CARD_TYPE='Spell' where CARD_ID=2;
update CLASHROYAL_CARDS set CARD_RARITY='Common', CARD_TYPE='Troop' where CARD_ID=3;
update CLASHROYAL_CARDS set CARD_RARITY='Common', CARD_TYPE='Troop' where CARD_ID=4;
update CLASHROYAL_CARDS set CARD_RARITY='Common', CARD_TYPE='Troop' where CARD_ID=21;

desc CLASHROYAL_CARDS;

delete from CLASHROYAL_CARDS where CARD_ID = 21;

select * from CLASHROYAL_CARDS;

rollback;

create or replace procedure delete_card_by_id
(
  input_card_id in int
)
as
begin
  delete from CLASHROYAL_CARDS where CARD_ID = input_card_id;
end;