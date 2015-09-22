#!/bin/bash

dates=($*)

for date in ${dates[@]} ; do
  url=http://lyssnaigen.sr.se/Autorec/ET2W/P3/Musikguiden_i_P3/${date:0:4}/${date:5:2}/SRP3_${date}_220500_6900_a192.m4a
  wget ${url} &
done

wait

