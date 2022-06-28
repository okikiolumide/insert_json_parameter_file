#!/bin/bash
# Script to insert JSON parameters from one file into another JSON Parameter file

file='param1.json' #parameter file with new key and values
cat $file | sed -n '2, 9p' >> param2.json # read and sort the particular parameter value from param1, saves output into new file
sed -ie '$s/$/\,/' param2.json #adds comma to new parameter file to pass JSON validation
sed -ie '18r param2.json' param.json # append new parameter file into line 18 of existing parameter file
