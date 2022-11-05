#!/bin/bash


# VARIABLES
bashrc_directory="/home/$USER/"
bashrc_filename=".bashrc"

backup_top_directory="/home/$USER/backups/"
backup_filename="backup_of_bashrc_$(date +%Y-%m-%d)"


# VARIABLES, constructed
bashrc_location=$bashrc_directory$bashrc_filename

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
	echo "This script will copy $bashrc_location and output the file to $backup_output_directory"
	echo
	echo ===================== script info - END =====================
	echo =============================================================
	echo
	echo
}


# FUNCTION
# Creates backup of .bashrc file.
create_backup_files() {
	
	echo
	echo "Backup started."
	cp $bashrc_location $backup_output_directory
	echo "Backup finished."
	echo

}


# MAIN program flow
script_info
create_backup_files