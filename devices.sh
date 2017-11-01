#!/usr/bin/env bash

device_type='iPhone'
devicesString=$(system_profiler SPUSBDataType |
 grep -A 11 -w "${device_type}" |
 grep "Serial Number" |
 awk '{ print $3 }')
devices=(${devicesString// / })
for (( i=0; i<${#devices[@]}; i++ ));
do
  devices[$i]="id=${devices[$i]}"
done
echo ${devices[*]}