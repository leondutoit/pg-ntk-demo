
set role data_owner;
set session "request.jwt.claim.user" = 'owner_A';

select * from spending_habits;
select * from personal_details;
