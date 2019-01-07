
set role admin_user;
set session "request.jwt.claim.user" = '';

select * from event_log_data_access;

-- who looked at A's data, when
select data_owner, data_user, row_id, request_time
    from event_log_data_access
    where data_owner = 'owner_A';
