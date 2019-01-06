
set role data_user;
set session "request.jwt.claim.user" = 'user_Z';

select * from spending_habits;
select * from personal_details;
