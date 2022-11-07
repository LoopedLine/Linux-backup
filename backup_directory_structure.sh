#!/bin/bash


# VARIABLES
inquiry_top_directory="/home/$USER/"
inquiry_subdirectories="a b c"

backup_top_directory="/home/$USER/backups/"
backup_filename="backup_of_directory_map_$(date +%Y-%m-%d).txt"


# VARIABLES, constructed
tree_command="tree -d -L 2 -a ${inquiry_subdirectories}"

backup_output_directory=$backup_top_directory$backup_filename


# FUNCTION
# Provides contextual output
script_info() {
	echo
	echo
	
	echo
	echo
	echo =============================================================
	echo ==================== script info - START ====================
	echo
	echo "Executing $BASH_SOURCE"
	echo
	echo ".bashrc backup script"
	echo
	echo "This script will output the directory structure of: $inquiry_top_directory"
	echo "for the subdirectories: $inquiry_subdirectories"
	echo "to the file: $backup_output_directory"
	echo
	echo ===================== script info - END =====================
	echo =============================================================
	echo
	echo
}


# FUNCTION
# Creates backup of .bashrc file.
create_backup_files() {
	
	cd $inquiry_top_directory
	
	echo
	echo "Backup started."
	echo
	
	#Display the results
	${tree_command}
	
	#Output the results to a file
	${tree_command} > $backup_output_directory
	
	echo
	echo "Backup finished."
	echo

}


# MAIN program flow
script_info
create_backup_files
