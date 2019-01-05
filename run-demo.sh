#!/bin/bash

num_steps=$( ls | grep sql | wc -l )
ith_file=$( seq 1 $num_steps )

for i in `seq 1 $num_steps`; do
    step=$( ls $i-* )
    echo $step
done
