
set role admin_user;

select group_add_members('group1','{"memberships": {
        "data_owners": ["A", "B", "C", "D"],
        "data_users": ["X", "Y"]}}'::json);
