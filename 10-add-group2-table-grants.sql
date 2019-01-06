
set role admin_user;

select table_group_access_grant('spending_habits', 'group2', 'select');
select table_group_access_grant('personal_details', 'group2', 'select');
