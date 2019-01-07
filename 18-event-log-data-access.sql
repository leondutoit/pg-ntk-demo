
set role admin_user;
set session "request.jwt.claim.user" = '';

select * from event_log_data_access;

-- who looked at A's data, when
select request_time, data_user from event_log_data_access
    where data_owner = 'owner_A';
