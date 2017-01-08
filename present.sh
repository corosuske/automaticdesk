#!/bin/bash
cellphone=192.168.1.48

if sudo ping -c 1 $cellphone &> /dev/null
then
#cellphone is present
  echo 1
else
# cellphone is not present asuming i am not home turn of everything 
  gpio write 2 1 & gpio write 7 1 & gpio write 8 1 & gpio write 15 1
fi
