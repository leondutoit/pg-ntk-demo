
set role data_owner;
set session "request.jwt.claim.user" = 'owner_A';

select * from t1;
select * from t2;
