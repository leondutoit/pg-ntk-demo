#!/bin/bash

num_steps=$( ls | grep sql | wc -l )

for i in `seq 1 $num_steps`; do
    step=$( ls $i-* )
    echo $step
done
