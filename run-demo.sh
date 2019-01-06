#!/bin/bash

num_steps=$( ls | grep sql | wc -l )

psql -d tsd_backend_utv_auth -c 'drop table personal_details; drop table spending_habits; drop role group1; drop role group2;'

# todo, run to $num_steps
for i in `seq 1 11`; do
    step=$( ls $i-* )
    echo $step
    psql -d tsd_backend_utv_auth -e -f $step
done
