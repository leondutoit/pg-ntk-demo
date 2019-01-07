
set role data_owner;
set session "request.jwt.claim.user" = 'owner_B';

select * from spending_habits;
select * from personal_details;

select user_delete_data();

select * from spending_habits;
select * from personal_details;
