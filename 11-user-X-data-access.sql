
set role data_user;
set session "request.jwt.claim.user" = 'user_X';

select current_setting('request.jwt.claim.user');
select * from spending_habits;
select * from personal_details;
