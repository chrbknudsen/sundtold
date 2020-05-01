#!/bin/bash
outfilename="passages_samlet.csv"
i=0
for filename in ./raw_data/passages*.csv; do

  if [ "$filename" != "$outfilename" ];
  then
    if [[ $i != 1 ]];
    then
        head -1 "$filename" > "$outfilename"
        i=(1)  
    fi
    tail -n +2 "$filename" >> "$outfilename"
    
  fi
done