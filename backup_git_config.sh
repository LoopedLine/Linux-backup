#!/bin/bash

# VARIABLES
inquiry_top_directory="/home/$USER/"
git_config_command=" git config --global --list"
backup_top_directory="/home/$USER/backups/"
backup_filename="backup_of_global_git_configs_$(date +%Y-%m-%d).txt"

# VARIABLES, constructed
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
	echo "git config backup script"
	echo
	echo "This script will backup the user's global git config values to the file:"
	echo "$backup_output_directory"
	echo
	echo ===================== script info - END =====================
	echo =============================================================
	echo
	echo
}

# FUNCTION
# Creates a backup of the user's global git config values
create_backup_files() {
	
	cd $inquiry_top_directory
	
	echo
	echo "Backup started."
	echo
	
	#Display the results
	${git_config_command}
	
	#Output the results to a file
	${git_config_command} > $backup_output_directory
	
	echo
	echo "Backup finished."
	echo

}

# MAIN program flow
script_info
create_backup_files