#!/bin/bash

timestamp="$(date +"%d_%m_%Y_%H_%M_%S")"
for image in $( ls input/ ); do
	for api in $( ls apis/ ); do
		input_file="input/${image}"
		output_folder="output/${timestamp}/${api%.*}"
		mkdir -p $output_folder
		output_file="${output_folder}/${image}.json"
    image_file_name="${image}"
		eval "$(sed -n 'p' "apis/"$api)"
		python -m json.tool $output_file > "${output_file}_formatted.json"
		rm $output_file
		mv "${output_file}_formatted.json" $output_file
	done
done
