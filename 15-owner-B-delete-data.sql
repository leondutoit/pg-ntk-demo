
set role data_owner;
set session "request.jwt.claim.user" = 'owner_B';

select * from t1;
select * from t2;

select user_delete_data();

select * from t1;
select * from t2;
