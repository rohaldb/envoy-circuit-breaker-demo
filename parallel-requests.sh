#!/bin/bash



c=1
while [[ ${c} -le 2 ]];
do
  bash ./make-request.sh $c 2 &
  (( c ++ ))
done

wait
