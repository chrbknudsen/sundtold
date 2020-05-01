#!/bin/bash
outfilename="taxes_samlet.csv"
i=0
for filename in ./raw_data/taxes*.csv; do

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