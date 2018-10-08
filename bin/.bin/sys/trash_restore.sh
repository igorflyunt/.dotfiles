#!/bin/bash

TRASH_FILES_PATH=$HOME/.local/share/Trash/files/
TRASH_INFO_PATH=$HOME/.local/share/Trash/info/
TRASH_INFO_FILE_EXTENSION=.trashinfo

# adds directory and suffix to info file name (i.e. quasi-basename shell command)
info_file_fullname() {
	echo $TRASH_INFO_PATH$1$TRASH_INFO_FILE_EXTENSION
}

remove_info_files() {
	rm $TRASH_INFO_PATH*
}

restore_files() {
	for trash_file in $TRASH_FILES_PATH*;
	do
		local file_name=$(basename $trash_file);
		local trash_info_file=$(info_file_fullname $file_name);
		local original_file_location=$(grep Path -i $trash_info_file | cut -d "=" -f 2);
		mv $trash_file $original_file_location
	done
}

if [ -z "$(ls -A $TRASH_FILES_PATH)" ]; then
	echo "Trash is empty!"
else
	restore_files
	remove_info_files
fi
