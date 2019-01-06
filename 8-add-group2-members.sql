
set role admin_user;

select group_add_members('group2', '{"memberships": {"data_users": [ "Z" ]}}'::json);

-- add all owners using positional boolean
select group_add_members('group2', null, null, null, true, null);
