#!/bin/bash

num_steps=$( ls | grep sql | wc -l )

psql -d tsd_backend_utv_auth -c 'drop table if exists personal_details; drop table if exists spending_habits; drop role group1; drop role group2;'

for i in `seq 1 $num_steps`; do
    step=$( ls $i-* )
    clear
    echo "Press any key to execute: $step"
    read
    psql -d tsd_backend_utv_auth -e -f $step
    read
done

psql -d tsd_backend_utv_auth -c 'delete from event_log_access_control; delete from event_log_data_access; delete from event_log_user_data_deletions; delete from event_log_user_group_removals; delete from event_log_data_updates;'
