
set role authenticator;
set role admin_user;

select table_create(
    '{"table_name": "spending_habits",
      "columns": [
        {"name": "spending", "type": "int",
         "description": "Amount spent in NOK"},
        {"name": "item_type", "type": "text",
         "description": "Type of item purchased"},
        {"name": "purchase_date", "type": "date",
         "description": "Year-Month-Day on which purchase occurred"} ],
      "description": "data about spending habits"}'::json,
    'mac');

select table_create(
    '{"table_name": "personal_details",
      "columns": [
        {"name": "name", "type": "text",
         "description": "First name, and last name"},
        {"name": "age", "type": "int",
         "description": "Age in years"} ],
      "description": "personal details"}'::json,
    'mac');
