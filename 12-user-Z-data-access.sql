
set role data_user;
set session "request.jwt.claim.user" = 'user_Z';

select * from t1;
select * from t2;
