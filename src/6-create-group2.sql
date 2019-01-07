
set role admin_user;

select group_create('group2', '{"description": "full access"}'::json);
