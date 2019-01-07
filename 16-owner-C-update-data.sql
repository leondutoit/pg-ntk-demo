
set role data_owner;
set session "request.jwt.claim.user" = 'owner_C';

select * from personal_details;
update personal_details set age = 55;
select * from personal_details;
