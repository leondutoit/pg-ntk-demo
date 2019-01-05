
set role data_user;
set session "request.jwt.claim.user" = 'user_X';

select * from t1;
select * from t2;
