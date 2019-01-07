
set role admin_user;
set session "request.jwt.claim.user" = '';

select * from table_overview;
select * from user_registrations;
select * from groups;
select * from table_metadata('spending_habits');
