
set role admin_user;
set session "request.jwt.claim.user" = '';

select * from event_log_user_data_deletions;
