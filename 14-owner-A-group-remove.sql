
set role data_owner;
set session "request.jwt.claim.user" = 'owner_A';

select user_group_remove('group1');
