
set role anon;

select user_register('A', 'data_owner', '{"institution": "111"}'::json);
select user_register('B', 'data_owner', '{"institution": "111"}'::json);
select user_register('C', 'data_owner', '{"institution": "111"}'::json);
select user_register('D', 'data_owner', '{"institution": "111"}'::json);
select user_register('E', 'data_owner', '{"institution": "222"}'::json);
select user_register('F', 'data_owner', '{"institution": "222"}'::json);
