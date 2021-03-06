
set role authenticator;
set role data_owner;

set session "request.jwt.claim.user" = 'owner_A';
insert into personal_details (name, age) values ('James Martin', 44);
insert into spending_habits (spending, item_type, purchase_date) values (140, 'food', '2019-01-02');
insert into spending_habits (spending, item_type, purchase_date) values (100, 'drink', '2019-01-03');

set session "request.jwt.claim.user" = 'owner_B';
insert into personal_details (name, age) values ('Sandra Fourie', 18);
insert into spending_habits (spending, item_type, purchase_date) values (60, 'drink', '2019-01-02');
insert into spending_habits (spending, item_type, purchase_date) values (78, 'drink', '2019-01-04');

set session "request.jwt.claim.user" = 'owner_C';
insert into personal_details (name, age) values ('Willem White', 11);
insert into spending_habits (spending, item_type, purchase_date) values (1020, 'travel', '2019-01-04');
insert into spending_habits (spending, item_type, purchase_date) values (101, 'food', '2019-01-04');

set session "request.jwt.claim.user" = 'owner_D';
insert into personal_details (name, age) values ('Lee Simpson', 84);
insert into spending_habits (spending, item_type, purchase_date) values (230, 'travel', '2019-01-05');
insert into spending_habits (spending, item_type, purchase_date) values (448, 'travel', '2019-01-06');

set session "request.jwt.claim.user" = 'owner_E';
insert into personal_details (name, age) values ('Gerhard du Preez', 23);
insert into spending_habits (spending, item_type, purchase_date) values (10230, 'housing', '2019-01-01');

set session "request.jwt.claim.user" = 'owner_F';
insert into personal_details (name, age) values ('Hannah Furgeson', 33);
insert into spending_habits (spending, item_type, purchase_date) values (209, 'food', '2019-01-06');
