
set role admin_user;

select table_group_access_grant('t1', 'group2', 'select');
select table_group_access_grant('t2', 'group2', 'select');
