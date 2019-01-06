
set role data_owner;
set session "request.jwt.claim.user" = 'owner_C';

select * from t2;
update t2 set age = 55;
select * from t2;
