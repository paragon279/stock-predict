#! /bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <Number of threads>" >&2
  exit 1
fi

> time_local.log
for ((i = 1; i <=$1; i++));
do
  echo $i;
  export OMP_NUM_THREADS=$i;
  time ./stockast >> time_local.log;
done
