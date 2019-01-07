
set role admin_user;

select group_create('group1', '{"description": "limited access"}'::json);
