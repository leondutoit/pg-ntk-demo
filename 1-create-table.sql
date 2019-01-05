
set role authenticator;
set role admin_user;

select table_create(
    '{"table_name": "t1",
      "columns": [
        {"name": "spending", "type": "int",
         "description": "Amount spent in NOK"},
        {"name": "item_type", "type": "text",
         "description": "Type of item purchased"},
        {"name": "purhase_date", "type": "date",
         "description": "Year-Month-Day on which purchase occurred"} ],
      "description": "a collection of data on people"}'::json,
    'mac');

select table_create(
    '{"table_name": "t2",
      "columns": [
        {"name": "name", "type": "text",
         "description": "First name, and last name"},
        {"name": "age", "type": "int",
         "description": "Age in years"} ],
      "description": "a collection of data on people"}'::json,
    'mac');
