
set role admin_user;

-- delete groups

select group_remove_members('group1', null, null, true);
select group_remove_members('group2', null, null, true);
select table_group_access_revoke('spending_habits', 'group1', 'select');
select table_group_access_revoke('spending_habits', 'group2', 'select');
select table_group_access_revoke('personal_details', 'group2', 'select');
select group_delete('group1');
select group_delete('group2');

-- delete data

set role authenticator;
set role data_owner;

set session "request.jwt.claim.user" = 'owner_A';
select user_delete_data();
set session "request.jwt.claim.user" = 'owner_B';
select user_delete_data();
set session "request.jwt.claim.user" = 'owner_C';
select user_delete_data();
set session "request.jwt.claim.user" = 'owner_D';
select user_delete_data();
set session "request.jwt.claim.user" = 'owner_E';
select user_delete_data();
set session "request.jwt.claim.user" = 'owner_F';
select user_delete_data();

-- delete all users

set role authenticator;
set role admin_user;

select user_delete('A', 'data_owner');
select user_delete('B', 'data_owner');
select user_delete('C', 'data_owner');
select user_delete('D', 'data_owner');
select user_delete('E', 'data_owner');
select user_delete('F', 'data_owner');

select user_delete('X', 'data_user');
select user_delete('Y', 'data_user');
select user_delete('Z', 'data_user');

-- drop tables

set role authenticator;
set role admin_user;

drop table spending_habits;
drop table personal_details;

-- clear audit data, maybe in another script
-- need to be superuser for this
