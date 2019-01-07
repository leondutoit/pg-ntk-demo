#!/bin/bash

num_steps=$( ls | grep sql | wc -l )

psql -d tsd_backend_utv_auth -c 'drop table personal_details; drop table spending_habits; drop role group1; drop role group2;'

for i in `seq 1 $num_steps`; do
    step=$( ls $i-* )
    echo $step
    psql -d tsd_backend_utv_auth -e -f $step
done

psql -d tsd_backend_utv_auth -c 'delete from event_log_access_control; delete from event_log_data_access;'
