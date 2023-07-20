#!/bin/bash

#check argument
if [[ "$1" == "-h" || "$1" == "--help" || -z "$1" ]]; then
  echo -e "$0 - simple app speed test (ms)
Options:
 -h, --help		output help information
"
  exit 1
fi

#start time
start=$(date +%s%N)
#start command
eval "$1 $2"
#finish time
end=$(date +%s%N)
#time spent
diff=$(($(($end - $start)) / 1000000))

echo "$diff" "ms"
