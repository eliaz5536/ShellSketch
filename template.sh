#!/bin/bash
#================================================================
# HEADER
#================================================================
# Script Name   : template.sh
# Description   : This script generates shell scripts for 
# 		  shell scripting development
# Author        : Eliaz Simon
# Date          : 2024-06-09
# Version       : 1.0
# Usage         : ./template.sh [options]
# Notes         : Ensure you have the necessary permissions to
#                 execute the script.
# Dependencies  : None
#================================================================
# The MIT License (MIT)
#
# Copyright (c) 2024 Eliaz Simon
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#================================================================

# Capture the current time
current_time=$(date +"%T")

# Capture the current date
current_date=$(date +"%Y-%m-%d")

# Capture the current year
current_year=$(date +"%Y")

#################################################################
# ANSI Color Code Escape Sequences			        #
#################################################################
BLACK="\e[30m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
LIGHT_GRAY="\e[37m"
GRAY="\e[90m"
LIGHT_RED="\e[91m"
LIGHT_GREEN="\e[92m"
LIGHT_YELLOW="\e[93m"
LIGHT_BLUE="\e[94m"
LIGHT_MAGENTA="\e[95m"
LIGHT_CYAN="\e[96m"
WHITE="\e[97m"
ENDCOLOR="\e[0m"

# Bold 
BOLD_BLACK="\e[1;30m"
BOLD_RED="\e[1;31m"
BOLD_GREEN="\e[1;32m"
BOLD_YELLOW="\e[1;33m"
BOLD_BLUE="\e[1;34m"
BOLD_MAGENTA="\e[1;35m"
BOLD_CYAN="\e[1;36m"
BOLD_LIGHT_GRAY="\e[1;37m"
BOLD_GRAY="\e[1;90m"
BOLD_LIGHT_RED="\e[1;91m"
BOLD_LIGHT_GREEN="\e[1;92m"
BOLD_LIGHT_YELLOW="\e[1;93m"
BOLD_LIGHT_BLUE="\e[1;94m"
BOLD_LIGHT_MAGENTA="\e[1;95m"
BOLD_LIGHT_CYAN="\e[1;96m"
BOLD_WHITE="\e[1;97m"

# Italic
ITALIC_BLACK="\e[3;30m"
ITALIC_RED="\e[3;31m"
ITALIC_GREEN="\e[3;32m"
ITALIC_YELLOW="\e[3;33m"
ITALIC_BLUE="\e[3;34m"
ITALIC_MAGENTA="\e[3;35m"
ITALIC_CYAN="\e[3;36m"
ITALIC_LIGHT_GRAY="\e[3;37m"
ITALIC_GRAY="\e[3;90m"
ITALIC_LIGHT_RED="\e[3;91m"
ITALIC_LIGHT_GREEN="\e[3;92m"
ITALIC_LIGHT_YELLOW="\e[3;93m"
ITALIC_LIGHT_BLUE="\e[3;94m"
ITALIC_LIGHT_MAGENTA="\e[3;95m"
ITALIC_LIGHT_CYAN="\e[3;96m"
ITALIC_WHITE="\e[3;97m"

# Background Color
BLACK_BG="\e[40m"
RED_BG="\e[41m"
GREEN_BG="\e[42m"
YELLOW_BG="\e[43m"
BLUE_BG="\e[44m"
MAGENTA_BG="\e[45m"
CYAN_BG="\e[46m"
WHITE_BG="\e[47m"

# Styles
BOLD="\e[1m"
ITALIC="\e[3m"

#================================================================
# FUNCTION: info
# DESCRIPTION:
#     Prints info message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: important_info
# DESCRIPTION:
#     Prints important info message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
important_info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: success
# DESCRIPTION:
#     Prints success message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
success() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}SUCCESS${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: warning
# DESCRIPTION:
#     Prints warning message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
warning() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: important_warning
# DESCRIPTION:
#     Prints important warning message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
important_warning() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: error
# DESCRIPTION:
#     Prints error message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: important_error
# DESCRIPTION:
#     Prints important error message using the provided parameter.
# PARAMETERS:
#     $1 - A message
# RETURNS:
#     None
#================================================================
important_error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

# ---------------------------------------------------------------
# File and Directory Check
# ---------------------------------------------------------------
#================================================================
# FUNCTION: directory_check
# DESCRIPTION:
#     Checks if a created directory path exists on the system for scan.
# PARAMETERS:
#     $1 - The directory path
#     $2 - The name of the scan
# RETURNS:
#     None
#================================================================
directory_check() {
	local path=$1
	local scan=$2

	if [[ -d $1 ]]; then
		echo " "
		info "Created $2 output directory of target live host under '$1'"
	else
		echo " "
		warning "Failed to create $2 output directory of target live host under '$1'"
	fi
}

#================================================================
# FUNCTION: file_check
# DESCRIPTION:
#     Checks if a generated file exists on the system for scan.
# PARAMETERS:
#     $1 - The file path
#     $2 - The name of the scan
# RETURNS:
#     None
#================================================================
file_check() {
	local path=$1
	local scan=$2

	if [[ -e $1 ]]; then
		echo " "
		success "Generated output data for $2 of target live host under '$1'"
	else
		echo " "
		warning "Failed to generate output data for $2 of target live host under '$1'"
	fi
}

# ---------------------------------------------------------------
# Global Variables
# ---------------------------------------------------------------
LICENSE="" # License type must be selected (MIT License, GPL 3 and etc).
COLOR=false # Add ANSI Colour Code escape sequences on the top for displaying banner.
SCRIPT_NAME="" # Provide the name of the script.
DIRECTORY_FOLDER=false # Option if user wants to create a folder inside of it.
DIRECTORY_NAME="" # Name of the directory folder if the user enables creation of directory.
DIRECTORY_LOCATION="" # Specify the location of the directory folder

#################################################################
# Help & Usage                                               	# 
#################################################################
#================================================================
# FUNCTION: append_license
# DESCRIPTION:
#     Appends selected license type on top of the header of a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_license() {
	OPTIONS=(
		"Apache-2.0" "Apache License 2.0" ON
		"GPL-3.0" "GNU General Public License v3.0" OFF 
		"MIT" "MIT License" OFF 
		"BSD-2-Clause" "BSD 2-clause 'Simplfied' license" OFF 
		"BSD-3-Clause" "BSD 3-clause 'New' or 'Revised' license" OFF 
		"BSL-1.0" "Boost Software License 1.0" OFF 
		"CC0-1.0" "Creative Commons Zero v1.0 Universal" OFF 
		"EPL-2.0" "Eclipse Public License 2.0" OFF 
		"AGPL-3.0" "GNU Affero General Public License v3.0" OFF 
		"LGPL-2.1" "GNU Lesser General Public License v2.1" OFF 
		"MPL-2.0" "Mozilla Public License 2.0" OFF 
		"Unlicense" "The Unlicense" OFF
	)

	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"Apache-2.0")
				apache
				;;					
			"GPL-3.0")
				gpl_v3	
				;;
			"MIT")
				mit
				;;
			"BSD-2-Clause")
				bsd_2_clause
				;;
			"BSD-3-Clause")
				bsd_3_clause
				;;
			"BSL-1.0")
				bsl
				;;
			"CC0-1.0")
				cc0_v1	
				;;
			"EPL-2.0")
				epl_v2
				;;
			"AGPL-3.0")
				agpl_v3	
				;;
			"LGPL-2.1")
				lgpl_v2_1
				;;
			"MPL-2.0")
				mpl_v2
				;;
			"Unlicense")
				unlicense
				;;

		esac
	done


	

}

#================================================================
# FUNCTION: append_color
# DESCRIPTION:
#     Appends list of ANSI color code escape sequences to a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_color() {
	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"BLACK")
				info "Adding Black ANSI color code to $SCRIPT_NAME.sh"
				echo 'BLACK="\e[30m\"' >> $SCRIPT_NAME.sh
				;;
			"GREEN")
				info "Adding Green ANSI color code to $SCRIPT_NAME.sh"
				echo 'GREEN="\e[32m"' >> $SCRIPT_NAME.sh
				;;
			"YELLOW")
				info "Adding Yellow ANSI color code to $SCRIPT_NAME.sh"
				echo 'YELLOW="\e[33m"' >> $SCRIPT_NAME.sh
				;;
			"RED")
				info "Adding Red ANSI color code to $SCRIPT_NAME.sh"
				echo 'RED="\e[31m"' >> $SCRIPT_NAME.sh
				;;
			"BLUE")
				info "Adding Blue ANSI color code to $SCRIPT_NAME.sh"
				echo 'BLUE="\e[34m"' >> $SCRIPT_NAME.sh
				;;
			"MAGENTA")
				info "Adding Magenta ANSI color code to $SCRIPT_NAME.sh"
				echo 'MAGENTA="\e[35m"' >> $SCRIPT_NAME.sh
				;;
			"CYAN")
				info "Adding Cyan ANSI color code to $SCRIPT_NAME.sh"
				echo 'CYAN="\e[36m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_GRAY")
				info "Adding Light Gray ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_GRAY="\e[37m"' >> $SCRIPT_NAME.sh
				;;
			"GRAY")
				info "Adding Light Gray ANSI color code to $SCRIPT_NAME.sh"
				echo 'GRAY="\e[90m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_RED")
				info "Adding Light Red ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_RED="\e[91m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_GREEN")
				info "Adding Light Green ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_GREEN="\e[92m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_YELLOW")
				info "Adding Light Yellow ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_YELLOW="\e[93m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_BLUE")
				info "Adding Light Blue ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_BLUE="\e[94m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_MAGENTA")
				info "Adding Light Magenta ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_MAGENTA="\e[95m"' >> $SCRIPT_NAME.sh
				;;
			"LIGHT_CYAN") 
				info "Adding Light Cyan ANSI color code to $SCRIPT_NAME.sh"
				echo 'LIGHT_CYAN="\e[96m"' >> $SCRIPT_NAME.sh
				;;
			"WHITE")
				info "Adding Light White ANSI color code to $SCRIPT_NAME.sh"
				echo 'WHITE="\e[97m"' >> $SCRIPT_NAME.sh
				;;
		esac
	done

	# Ensure that you finish implementing color text to move forward	
	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
}

#================================================================
# FUNCTION: append_bold_color
# DESCRIPTION:
#     Appends list of Bold ANSI color code escape sequences to a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_bold_color() {
	echo "# Bold" >> $SCRIPT_NAME.sh
	echo 'BOLD_BLACK="\e[1;30m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_RED="\e[1;31m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_GREEN="\e[1;32m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_YELLOW="\e[1;33m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_BLUE="\e[1;34m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_MAGENTA="\e[1;35m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_CYAN="\e[1;36m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_GRAY="\e[1;37m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_GRAY="\e[1;90m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_RED="\e[1;91m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_GREEN="\e[1;92m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_YELLOW="\e[1;93m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_BLUE="\e[1;94m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_MAGENTA="\e[1;95m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_CYAN="\e[1;96m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_WHITE="\e[1;97m"' >> $SCRIPT_NAME.sh

	OPTIONS=( 
		
	)

	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"Test")
				;;
		esac
	done

	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
}


#================================================================
# FUNCTION: append_font_styles
# DESCRIPTION:
#     Appends list of Bold ANSI color code escape sequences to a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_font_style() {
	echo "# Styles" >> $SCRIPT_NAME.sh

	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"BOLD")
				info "Adding Bold ANSI escape sequence to $SCRIPT_NAME.sh"
				echo 'BOLD="\e[1m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC")
				info "Adding Italic ANSI escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC="\e[3m"' >> $SCRIPT_NAME.sh
				;;

		esac
	done

	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
}



#================================================================
# FUNCTION: append_italic_colors
# DESCRIPTION:
#     Appends list of Bold ANSI color code escape sequences to a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_italic_colors() {

	echo "# Italic" >> $SCRIPT_NAME.sh

	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"ITALIC_BLACK")
				info "Adding Italic Black ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_BLACK="\e[3;30m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_RED")
				info "Adding Italic Red ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_RED="\e[3;31m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_GREEN")
				info "Adding Italic Green ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_GREEN="\e[3;32m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_YELLOW")
				info "Adding Italic Yellow ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_YELLOW="\e[3;33m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_BLUE")
				info "Adding Italic Blue ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_BLUE="\e[3;34m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_MAGENTA")
				info "Adding Italic Magenta ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_MAGENTA="\e[3;35m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_CYAN")
				info "Adding Italic Cyan ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_CYAN="\e[3;36m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_GRAY")
				info "Adding Italic Light Gray ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_GRAY="\e[3;37m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_GRAY")
				info "Adding Italic Gray ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_GRAY="\e[3;90m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_RED")
				info "Adding Italic Light Red ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_RED="\e[3;91m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_GREEN")
				info "Adding Italic Light Green ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_GREEN="\e[3;92m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_YELLOW")
				info "Adding Italic Light Yellow ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_YELLOW="\e[3;93m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_BLUE")
				info "Adding Italic Light Blue ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_BLUE="\e[3;94m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_MAGENTA")
				info "Adding Italic Light Magenta ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_MAGENTA="\e[3;95m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_LIGHT_CYAN")
				info "Adding Italic Light Cyan ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_LIGHT_CYAN="\e[3;96m"' >> $SCRIPT_NAME.sh
				;;
			"ITALIC_WHITE")
				info "Adding Italic White ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'ITALIC_WHITE="\e[3;97m"' >> $SCRIPT_NAME.sh
				;;
		esac
	done

	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
}

#================================================================
# FUNCTION: append_background_color
# DESCRIPTION:
#     Appends list of Background text ANSI color code escape sequences to a script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_background_color() {
	echo "# Background Color" >> $SCRIPT_NAME.sh

	local CHOICES = $1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"BLACK_BG")
				info "Adding Black Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'BLACK_BG="\e[40m"' >> $SCRIPT_NAME.sh
				;;
			"RED_BG")
				info "Adding Red Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'RED_BG="\e[41m"' >> $SCRIPT_NAME.sh
				;;
			"GREEN_BG")
				info "Adding Green Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'GREEN_BG="\e[42m"' >> $SCRIPT_NAME.sh
				;;
			"YELLOW_BG")
				info "Adding Yellow Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'YELLOW_BG="\e[43m"' >> $SCRIPT_NAME.sh
				;;
			"BLUE_BG")
				info "Adding Blue Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'BLUE_BG="\e[44m"' >> $SCRIPT_NAME.sh
				;;
			"MAGENTA_BG")
				info "Adding Magenta Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'MAGENTA_BG="\e[45m"' >> $SCRIPT_NAME.sh
				;;
			"CYAN_BG")
				info "Adding Cyan Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'CYAN_BG="\e[46m"' >> $SCRIPT_NAME.sh
				;;
			"WHITE_BG")
				info "Adding White Background ANSI Color code escape sequence to $SCRIPT_NAME.sh"
				echo 'WHITE_BG="\e[47m"' >> $SCRIPT_NAME.sh
				;;


		esac
	done

	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
}


#================================================================
# FUNCTION: generate_script
# DESCRIPTION:
#     Generates shell script from user's options.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
generate_script() {
	touch $SCRIPT_NAME.sh

	echo "#!/bin/bash" > $SCRIPT_NAME.sh
	echo " " >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# HEADER " >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "Script Name   : " >> $SCRIPT_NAME.sh
	echo "Description   : " >> $SCRIPT_NAME.sh
	echo "Author   : " >> $SCRIPT_NAME.sh
	echo "$AUTHOR" >> $SCRIPT_NAME.sh
	echo "Version   : 1.0" >> $SCRIPT_NAME.sh
	echo "Usage   : ./$SCRIPT_NAME.sh" >> $SCRIPT_NAME.sh
	echo "Notes   : " >> $SCRIPT_NAME.sh
	echo "Dependencies   : " >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh

	# Select license type to use over here
	append_license

	echo "#================================================================" >> $SCRIPT_NAME.sh

	echo "" >> $SCRIPT_NAME.sh

	# append ANSI Color Code Escape Sequences
	append_ansi



	exit 0
}

#################################################################
# Help & Usage                                               	# 
#################################################################
#================================================================
# FUNCTION: usage
# DESCRIPTION:
#     Prints default usage information.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
usage() {
        echo "Shell Script Template"
	echo " "
	echo "Usage: ./template [options]"
	echo " "
}

#================================================================
# FUNCTION: help
# DESCRIPTION:
#     Prints default help information.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
help() {
	usage
        echo "Options:"
       	printf "  ${BOLD}--usage${ENDCOLOR}						Show usage information\n"
        printf "  ${BOLD}-h, --help${ENDCOLOR}						Show help message\n"
        printf "  ${BOLD}-n, --name${ENDCOLOR}						Specify script name\n"
        printf "  ${BOLD}-a, --author${ENDCOLOR}						Specify author\n"
        printf "  ${BOLD}-l, --license${ENDCOLOR}						Specify license type\n"
        printf "  ${BOLD}--color${ENDCOLOR}						Enable ANSI Color Code Escape Sequences\n"
        printf "  ${BOLD}--licenses${ENDCOLOR}						Show list of license types\n"
        printf "  ${BOLD}-gui, --graphical-interface${ENDCOLOR}						Display Graphical Interface for this script\n"
        echo " "
	exit 0
}

#================================================================
# License Types
#================================================================
#================================================================
# FUNCTION: apache
# DESCRIPTION:
#     Writes "Apache License 2.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
apache() {
	info "Writing Apache License 2.0 description to $SCRIPT_NAME.sh"
	echo "Copyright $current_year $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Licensed under the Apache License, Version 2.0 (the "License"); you may not use this" >> $SCRIPT_NAME.sh
	echo "file except in compliance with the License. You may obtain a copy of the License at" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "http://www.apache.org/licenses/LICENSE-2.0" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Unless required by applicable law or agreed to in writing, software distributed under" >> $SCRIPT_NAME.sh
	echo "the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR" >> $SCRIPT_NAME.sh
	echo "CONDITIONS OF ANY KIND, either express or implied. See the License for the specific" >> $SCRIPT_NAME.sh
	echo "language governing permissions and limitations under the License." >> $SCRIPT_NAME.sh
	success "Completed writing Apache License 2.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: gpl_v2
# DESCRIPTION:
#     Writes "GNU General Public License v2.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
gpl_v2() {
	info "Writing GNU GENERAL Public License v2.0 description to $SCRIPT_NAME.sh"
	echo "$SCRIPT_NAME" >> $SCRIPT_NAME.sh
	echo "Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is free software: you can redistribute it and/or modify" >> $SCRIPT_NAME.sh
	echo "it under the terms of the GNU General Public License as published by" >> $SCRIPT_NAME.sh
	echo "the Free Software Foundation, either version 3 of the License, or" >> $SCRIPT_NAME.sh
	echo "(at your option) any later version." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
	echo "but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> $SCRIPT_NAME.sh
	echo "GNU General Public License for more details." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "You should have received a copy of the GNU General Public License" >> $SCRIPT_NAME.sh
	echo "along with this program.  If not, see <https://www.gnu.org/licenses/>." >> $SCRIPT_NAME.sh
	success "Completed writing GNU GENERAL Public License v2.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: gpl_v3
# DESCRIPTION:
#     Writes "GNU General Public License v3.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
gpl_v3() {
	info "Writing GNU General Public License v3.0 description to $SCRIPT_NAME.sh"
	echo "$SCRIPT_NAME" >> $SCRIPT_NAME.sh
	echo "Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is free software: you can redistribute it and/or modify" >> $SCRIPT_NAME.sh
	echo "it under the terms of the GNU General Public License as published by" >> $SCRIPT_NAME.sh
	echo "the Free Software Foundation, either version 3 of the License, or" >> $SCRIPT_NAME.sh
	echo "(at your option) any later version." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
	echo "but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> $SCRIPT_NAME.sh
	echo "GNU General Public License for more details." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "You should have received a copy of the GNU General Public License" >> $SCRIPT_NAME.sh
	echo "along with this program.  If not, see <https://www.gnu.org/licenses/>." >> $SCRIPT_NAME.sh
	success "Completed writing GNU General Public License v3.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: mit
# DESCRIPTION:
#     Writes "MIT License" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
mit() {
	info "Writing MIT License description to $SCRIPT_NAME.sh"
	echo "MIT License" >> $SCRIPT_NAME.sh
	echo "Copyright (c) $current_year $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Permission is hereby granted, free of charge, to any person obtaining a copy of this" >> $SCRIPT_NAME.sh
	echo "software and associated documentation files (the "Software"), to deal in the Software" >> $SCRIPT_NAME.sh
	echo "without restriction, including without limitation the rights to use, copy, modify, merge," >> $SCRIPT_NAME.sh
	echo "publish, distribute, sublicense, and/or sell copies of the Software, and to permit" >> $SCRIPT_NAME.sh
	echo "persons to whom the Software is furnished to do so, subject to the following" >> $SCRIPT_NAME.sh
	echo "conditions:" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "The above copyright notice and this permission notice shall be included in all copies or" >> $SCRIPT_NAME.sh
	echo "substantial portions of the Software." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
	echo "OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT." >> $SCRIPT_NAME.sh
	echo "IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY" >> $SCRIPT_NAME.sh
	echo "CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT," >> $SCRIPT_NAME.sh
	echo "TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE" >> $SCRIPT_NAME.sh
	echo "SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE." >> $SCRIPT_NAME.sh
	success "Completed writing MIT License description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: bsd_2_clause
# DESCRIPTION:
#     Writes "BSD 2-clause 'Simplfied'" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
bsd_2_clause() {
	info "Writing BSD 2-clause 'Simplified' License description to $SCRIPT_NAME.sh"
	echo "BSD 2-Clause License" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Copyright (c) $current_year, $AUTHOR" >> $SCRIPT_NAME.sh
	echo "Redistribution and use in source and binary forms, with or without modification, are" >> $SCRIPT_NAME.sh
	echo "permitted provided that the following conditions are met:" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "	1. Redistributions of source code must retain the above copyright notice, this list of" >> $SCRIPT_NAME.sh
	echo "	   conditions and the following disclaimer." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "  2. Redistributions in binary form must reproduce the above copyright notice, this list" >> $SCRIPT_NAME.sh
	echo "	   of conditions and the following disclaimer in the documentation and/or other" >> $SCRIPT_NAME.sh
	echo "	   materials provided with the distribution." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS" >> $SCRIPT_NAME.sh
	echo "IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
	echo "THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR" >> $SCRIPT_NAME.sh
	echo "PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR" >> $SCRIPT_NAME.sh
	echo "CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL," >> $SCRIPT_NAME.sh
	echo "EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
	echo "PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR" >> $SCRIPT_NAME.sh
	echo "PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF" >> $SCRIPT_NAME.sh
	echo "LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING" >> $SCRIPT_NAME.sh
	echo "NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS" >> $SCRIPT_NAME.sh
	echo "SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE." >> $SCRIPT_NAME.sh
	success "Complete writing BSD 2-clause 'Simplified' License description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: bsd_3_clause
# DESCRIPTION:
#     Writes "BSD 3-clause 'New' or 'Revised'" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
bsd_3_clause() {
	info "Writing BSD 3-clause 'New' or 'Revised' License description to $SCRIPT_NAME.sh"
	echo "BSD 3-Clause License" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Copyright (c) $current_year, $AUTHOR" >> $SCRIPT_NAME.sh
	echo "Redistribution and use in source and binary forms, with or without modification, are" >> $SCRIPT_NAME.sh
	echo "permitted provided that the following conditions are met:" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "	1. Redistributions of source code must retain the above copyright notice, this list of" >> $SCRIPT_NAME.sh
	echo "	   conditions and the following disclaimer." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "  2. Redistributions in binary form must reproduce the above copyright notice, this list" >> $SCRIPT_NAME.sh
	echo "	   of conditions and the following disclaimer in the documentation and/or other" >> $SCRIPT_NAME.sh
	echo "	   materials provided with the distribution." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "	3. Neither the name of the copyright holder nor the names of its contributors may" >> $SCRIPT_NAME.sh
	echo "	   be used to endorse or promote products derived from this software without" >> $SCRIPT_NAME.sh
	echo "	   specific prior written permission." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS" >> $SCRIPT_NAME.sh
	echo "IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
	echo "THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR" >> $SCRIPT_NAME.sh
	echo "PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR" >> $SCRIPT_NAME.sh
	echo "CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL," >> $SCRIPT_NAME.sh
	echo "EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
	echo "PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR" >> $SCRIPT_NAME.sh
	echo "PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF" >> $SCRIPT_NAME.sh
	echo "LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING" >> $SCRIPT_NAME.sh
	echo "NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS" >> $SCRIPT_NAME.sh
	echo "SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE." >> $SCRIPT_NAME.sh
	success "Completed writing BSD 3-clause 'New' or 'Revised' License description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: bsl
# DESCRIPTION:
#     Writes "Boost Software License 1.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
bsl() {
	info "Writing Boost Software License 1.0 description to $SCRIPT_NAME.sh"
	echo "Boost Software License - Version 1.0 - August 17th, 2003" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Permission is hereby granted, free of charge, to any person or organization obtaining a" >> $SCRIPT_NAME.sh
	echo "copy of the software and accompanying documentation covered by this license (the" >> $SCRIPT_NAME.sh
	echo "\"Software\") to use, reproduce, display, distribute, execute, and transmit the Software," >> $SCRIPT_NAME.sh
	echo "and to prepare derivative works of the Software, and to permit third-parties to whom" >> $SCRIPT_NAME.sh
	echo "the Software is furnished to do so, all subject to the following:" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "The copyright notices in the Software and this entire statement, including the above" >> $SCRIPT_NAME.sh
	echo "license grant, this restriction and the following disclaimer, must be included in all" >> $SCRIPT_NAME.sh
	echo "copies of the Software, in whole or in part, and all derivative works of the Software," >> $SCRIPT_NAME.sh
	echo "unless such copies or derivative works are solely in the form of machine-executable" >> $SCRIPT_NAME.sh
	echo "object code generated by a source language processor." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
	echo "OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-" >> $SCRIPT_NAME.sh
	echo "INFRINGEMENT. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR ANYONE" >> $SCRIPT_NAME.sh
	echo "DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY," >> $SCRIPT_NAME.sh
	echo "WHETHER IN CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN" >> $SCRIPT_NAME.sh
	echo "CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE" >> $SCRIPT_NAME.sh 
	echo "SOFTWARE." >> $SCRIPT_NAME.sh
	success "Completed writing Boost Software License 1.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: cc0_v1
# DESCRIPTION:
#     Writes "Creative Commons Zero v1.0 Universal" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
cc0_v1() {
	info "Writing Creative Commons Zero v1.0 Universal License description to $SCRIPT_NAME.sh"
	echo "The person who associated a work with this deed has dedicated the work to" >> $SCRIPT_NAME.sh
	echo "the public domain by waiving all of his or her rights to the work worldwide" >> $SCRIPT_NAME.sh
	echo "under copyright law, including all related and neighboring rights, to the extent" >> $SCRIPT_NAME.sh
	echo "allowed by law." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "You can copy, modify, distribute and perform the work, even for commercial" >> $SCRIPT_NAME.sh
	echo "purposes, all without asking permission. See Other Information below." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Other Information" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "In no way are the patent or trademark rights of any person affected by CC0," >> $SCRIPT_NAME.sh
	echo "nor are the rights that other persons may have in the work or in how the work" >> $SCRIPT_NAME.sh
	echo "is used, such as publicity or privacy rights." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Unless expressly stated otherwise, the person who associated a work with this" >> $SCRIPT_NAME.sh
	echo "deed makes no warranties about the work, and disclaims liability for all uses" >> $SCRIPT_NAME.sh
	echo "of the work, to the fullest extent permitted by applicable law." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "When using or citing the work, you should not imply endorsement by the" >> $SCRIPT_NAME.sh
	echo "author or the affirmer." >> $SCRIPT_NAME.sh
	success "Completed writing Creative Commons Zero v1.0 Universal License description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: epl_v2
# DESCRIPTION:
#     Writes "Eclipse Public License 2.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
epl_v2() {
	info "Writing Eclipse Public License 2.0 description to $SCRIPT_NAME.sh"
	echo "Copyright (c) $current_year $AUTHOR [and others]" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program and the accompanying materials are made" >> $SCRIPT_NAME.sh
	echo "available under the terms of the Eclipse Public License 2.0" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "SPDX-License-Identifier: EPL-2.0" >> $SCRIPT_NAME.sh
	success "Completed writing Eclipse Public License 2.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: agpl_v3
# DESCRIPTION:
#     Writes "GNU Affero General Public License v3.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
agpl_v3() {
	info "Writing GNU Affero General Public License v3.0 description to $SCRIPT_NAME.sh"
	echo "$SCRIPT_NAME" >> $SCRIPT_NAME.sh 
	echo "Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is free software: you can redistribute it and/or modify" >> $SCRIPT_NAME.sh
	echo "it under the terms of the GNU Affero General Public License as published" >> $SCRIPT_NAME.sh
	echo "by the Free Software Foundation, either version 3 of the License, or" >> $SCRIPT_NAME.sh
	echo "(at your option) any later version." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This program is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
	echo "but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> $SCRIPT_NAME.sh
	echo "GNU Affero General Public License for more details." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "You should have received a copy of the GNU Affero General Public License" >> $SCRIPT_NAME.sh
	echo "along with this program.  If not, see <https://www.gnu.org/licenses/>." >> $SCRIPT_NAME.sh
	success "Completed writing GNU Affero General Public License v3.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: lgpl_v2_1
# DESCRIPTION:
#     Writes "GNU Lesser General Public License v2.1" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
lgpl_v2_1() {
	info "Writing GNU Lesser General Public License v2.1 description to $SCRIPT_NAME.sh"
	echo "$SCRIPT_NAME" >> $SCRIPT_NAME.sh 
	echo "Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This library is free software; you can redistribute it and/or" >> $SCRIPT_NAME.sh
	echo "modify it under the terms of the GNU Lesser General Public" >> $SCRIPT_NAME.sh
	echo "License as published by the Free Software Foundation; either" >> $SCRIPT_NAME.sh
	echo "version 2.1 of the License, or (at your option) any later version." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This library is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
	echo "but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
	echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU" >> $SCRIPT_NAME.sh
	echo "Lesser General Public License for more details." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "You should have received a copy of the GNU Lesser General Public" >> $SCRIPT_NAME.sh
	echo "License along with this library; if not, write to the Free Software" >> $SCRIPT_NAME.sh
	echo "Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301" >> $SCRIPT_NAME.sh
	echo "USA" >> $SCRIPT_NAME.sh
	success "Completed writing GNU Lesser General Public License v2.1 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: mpl_v2
# DESCRIPTION:
#     Writes "Mozilla Public License 2.0" license description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
mpl_v2() {
	info "Writing Mozilla Public License 2.0 description to $SCRIPT_NAME.sh"
	echo "Mozilla Public License 2.0" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "This Source Code Form is subject to the terms of the Mozilla Public" >> $SCRIPT_NAME.sh
	echo "License, v. 2.0. If a copy of the MPL was not distributed with this" >> $SCRIPT_NAME.sh
	echo "file, You can obtain one at https://mozilla.org/MPL/2.0/." >> $SCRIPT_NAME.sh
	success "Completed writing Mozilla Public License 2.0 description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: mpl_v2
# DESCRIPTION:
#     Writes "The Unlicense" description to script
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
unlicense() {
	info "Writing unlicense description to $SCRIPT_NAME.sh"
	echo "This is free and unencumbered software released into the public domain." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software," >> $SCRIPT_NAME.sh
	echo "either in source code form or as a compiled binary, for any purpose, commercial or" >> $SCRIPT_NAME.sh
	echo "non-commercial, and by any means." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "In jurisdictions that recognize copyright laws, the author or authors of this software" >> $SCRIPT_NAME.sh
	echo "dedicate any and all copyright interest in the software to the public domain. We make" >> $SCRIPT_NAME.sh
	echo "this dedication for the benefit of the public at large and to the detriment of our heirs" >> $SCRIPT_NAME.sh
	echo "and successors. We intend this dedication to be an overt act of relinquishment in" >> $SCRIPT_NAME.sh
	echo "perpetuity of all present and future rights to this software under copyright law." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
	echo "OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES" >> $SCRIPT_NAME.sh
	echo "OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND" >> $SCRIPT_NAME.sh
	echo "NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM," >> $SCRIPT_NAME.sh
	echo "DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR" >> $SCRIPT_NAME.sh
	echo "OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR" >> $SCRIPT_NAME.sh
	echo "THE USE OR OTHER DEALINGS IN THE SOFTWARE." >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "For more information, please refer to https://unlicense.org" >> $SCRIPT_NAME.sh
	success "Completed writing unlicense description to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: display_licenses
# DESCRIPTION:
#     Prints all license types.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
display_licenses() {
        echo "Licenses Types: "
        printf "  ${BOLD}KEYWORDS${ENDCOLOR}							Description\n"
        printf "  ${BOLD}Apache-2.0${ENDCOLOR}							Apache License 2.0\n"
        printf "  ${BOLD}GPL-3.0${ENDCOLOR}							GNU General Public License v3.0\n"
        printf "  ${BOLD}MIT${ENDCOLOR}								MIT License\n"
        printf "  ${BOLD}BSD-2-Clause${ENDCOLOR}						BSD 2-clause 'Simplified' license\n"
        printf "  ${BOLD}BSD-3-Clause${ENDCOLOR}						BSD 3-clause 'New' or 'Revised' license\n"
        printf "  ${BOLD}BSL-1.0${ENDCOLOR}							Boost Software License 1.0\n"
        printf "  ${BOLD}CC0-1.0${ENDCOLOR}							Creative Commons Zero v1.0 Universal\n"
        printf "  ${BOLD}EPL-2.0${ENDCOLOR}							Eclipse Public License 2.0\n"
        printf "  ${BOLD}AGPL-3.0${ENDCOLOR}							GNU Affero General Public License v3.0\n"
        printf "  ${BOLD}LGPL-2.1${ENDCOLOR}							GNU Lesser General Public License v2.1\n"
        printf "  ${BOLD}MPL-2.0${ENDCOLOR}							Mozilla Public License 2.0\n"
        printf "  ${BOLD}Unlicense${ENDCOLOR}							The Unlicense\n"
        echo " "
	exit 0
}


#================================================================
# ANSI Colour Code Escape Sequences
#================================================================
#================================================================
# FUNCTION: append_ansi
# DESCRIPTION:
#     Appends all ANSI Color Code Escape Sequences to script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_ansi() {
	info "Appending ANSI Color Code Escape Sequences to $SCRIPT_NAME.sh"
	
	echo "" > $SCRIPT_NAME.sh
	echo "#################################################################" >> $SCRIPT_NAME.sh
	echo "# ANSI Color Code Escape Sequences			        #" >> $SCRIPT_NAME.sh
	echo "#################################################################" >> $SCRIPT_NAME.sh
	echo 'BLACK="\e[30m\"' >> $SCRIPT_NAME.sh
	echo 'RED="\e[31m"' >> $SCRIPT_NAME.sh
	echo 'GREEN="\e[32m"' >> $SCRIPT_NAME.sh
	echo 'YELLOW="\e[33m"' >> $SCRIPT_NAME.sh
	echo 'BLUE="\e[34m"' >> $SCRIPT_NAME.sh
	echo 'MAGENTA="\e[35m"' >> $SCRIPT_NAME.sh
	echo 'CYAN="\e[36m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_GRAY="\e[37m"' >> $SCRIPT_NAME.sh
	echo 'GRAY="\e[90m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_RED="\e[91m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_GREEN="\e[92m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_YELLOW="\e[93m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_BLUE="\e[94m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_MAGENTA="\e[95m"' >> $SCRIPT_NAME.sh
	echo 'LIGHT_CYAN="\e[96m"' >> $SCRIPT_NAME.sh
	echo 'WHITE="\e[97m"' >> $SCRIPT_NAME.sh
	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "# Bold" >> $SCRIPT_NAME.sh
	echo 'BOLD_BLACK="\e[1;30m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_RED="\e[1;31m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_GREEN="\e[1;32m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_YELLOW="\e[1;33m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_BLUE="\e[1;34m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_MAGENTA="\e[1;35m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_CYAN="\e[1;36m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_GRAY="\e[1;37m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_GRAY="\e[1;90m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_RED="\e[1;91m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_GREEN="\e[1;92m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_YELLOW="\e[1;93m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_BLUE="\e[1;94m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_MAGENTA="\e[1;95m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_LIGHT_CYAN="\e[1;96m"' >> $SCRIPT_NAME.sh
	echo 'BOLD_WHITE="\e[1;97m"' >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "# Italic" >> $SCRIPT_NAME.sh
	echo 'ITALIC_BLACK="\e[3;30m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_RED="\e[3;31m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_GREEN="\e[3;32m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_YELLOW="\e[3;33m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_BLUE="\e[3;34m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_MAGENTA="\e[3;35m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_CYAN="\e[3;36m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_GRAY="\e[3;37m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_GRAY="\e[3;90m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_RED="\e[3;91m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_GREEN="\e[3;92m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_YELLOW="\e[3;93m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_BLUE="\e[3;94m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_MAGENTA="\e[3;95m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_LIGHT_CYAN="\e[3;96m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC_WHITE="\e[3;97m"' >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "# Background Color" >> $SCRIPT_NAME.sh
	echo 'BLACK_BG="\e[40m"' >> $SCRIPT_NAME.sh
	echo 'RED_BG="\e[41m"' >> $SCRIPT_NAME.sh
	echo 'GREEN_BG="\e[42m"' >> $SCRIPT_NAME.sh
	echo 'YELLOW_BG="\e[43m"' >> $SCRIPT_NAME.sh
	echo 'BLUE_BG="\e[44m"' >> $SCRIPT_NAME.sh
	echo 'MAGENTA_BG="\e[45m"' >> $SCRIPT_NAME.sh
	echo 'CYAN_BG="\e[46m"' >> $SCRIPT_NAME.sh
	echo 'WHITE_BG="\e[47m"' >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	echo "# Styles" >> $SCRIPT_NAME.sh
	echo 'BOLD="\e[1m"' >> $SCRIPT_NAME.sh
	echo 'ITALIC="\e[3m"' >> $SCRIPT_NAME.sh
	success "Finished appending all ANSI Color Code Escape Sequences to $SCRIPT_NAME.sh"
}

#================================================================
# Message Types
#================================================================
#================================================================
# FUNCTION: display_messages
# DESCRIPTION:
#     Prints all message types.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
display_messages() {
        echo "Messages Types"
       	printf "  ${BOLD}Info${ENDCOLOR}						Displays info message\n"
	info "This is an info message"
       	printf "  ${BOLD}Success${ENDCOLOR}						Displays success message\n"
	success "This is a success message"
       	printf "  ${BOLD}Debug${ENDCOLOR}						Displays debug  message\n"
	debug "This is a debug message"
       	printf "  ${BOLD}Warning${ENDCOLOR}						Displays warning message\n"
	warning "This is a warning message"
       	printf "  ${BOLD}Error${ENDCOLOR}						Displays error message\n"
	error "This is an error message"
       	printf "  ${BOLD}Fatal${ENDCOLOR}						Displays fatal message\n"
	# fatal "This is a fatal message"
	echo " "
	
	# Insert option to add current time before message or not

	exit 0
}

#================================================================
# FUNCTION: display_messages
# DESCRIPTION:
#     Appends all types of messages to a shell script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_messages() {
	info "Writing all types of messages to $SCRIPT_NAME.sh"
	warning "Color must be installed in order to use colorful bash script messages"

	# Info
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: info" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints info message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "info() {" >> $SCRIPT_NAME.sh
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# important_info
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: important_info" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints important info message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "important_info() {" >> $SCRIPT_NAME.sh
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# success
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: success" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints success message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "success() {" >> $SCRIPT_NAME.sh
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}SUCCESS${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# warning
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: warning" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints warning message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "warning() {" >> $SCRIPT_NAME.sh
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# important_warning
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: important_warning" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints important warning message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "important_warning() {" >> $SCRIPT_NAME.sh
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo ' 	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# error 
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: error" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints error message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "error() {" >> $SCRIPT_NAME.sh	
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	# important_error
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# FUNCTION: important_error" >> $SCRIPT_NAME.sh
	echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
	echo "#     Prints important error message using the provided parameter." >> $SCRIPT_NAME.sh
	echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
	echo "#     $1 - A message" >> $SCRIPT_NAME.sh
	echo "# RETURNS:" >> $SCRIPT_NAME.sh
	echo "#     None" >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "important_error() {" >> $SCRIPT_NAME.sh	
	echo "	local message=$1" >> $SCRIPT_NAME.sh
	echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
	echo "}" >> $SCRIPT_NAME.sh
	
	echo "" >> $SCRIPT_NAME.sh

	success "Completed writing all types of messages to $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: input_check
# DESCRIPTION:
#     Checks global variables that are specified before scan
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
input_check() {
	# ---------------------------------------------------------------------------
	# Script Name
	# ---------------------------------------------------------------------------
	if [ -z "$SCRIPT_NAME" ]; then
		error "You must specify the name of the script."	
		exit 1
	fi
	info "Script name: $SCRIPT_NAME"

	# ---------------------------------------------------------------------------
	# Author
	# ---------------------------------------------------------------------------
	if [ -z "$AUTHOR" ]; then
		error "Invalid author name"	
		exit 1
	fi
	info "Author: $SCRIPT_NAME"

	# ---------------------------------------------------------------------------
	# LICENSE
	# ---------------------------------------------------------------------------
	if [ -n "$LICENSE" ]; then
		licenses_array=("Apache-2.0" "GPL-3.0" "MIT" "BSD-2-Clause" "BSD-3-Clause" "BSL-1.0" "CC0-1.0" "EPL-2.0" "AGPL-3.0" "LGPL-2.1" "MPL-2.0" "Unlicense")	

		match=false	
		for LIC in ${licenses_array[@]}; do
			if [[ "$LICENSE" == "$LIC" ]]; then
				match=true
				break
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown license type for the following: $LICENSES"
			exit 1
		fi	
	
		info "License Type: $LICENSE"
	else 
		error "You must pick a license type before generating a script."
		exit 1
	fi

	# ---------------------------------------------------------------------------
	# COLOR
	# ---------------------------------------------------------------------------
	if [ "$COLOR" == "true" ]; then
		info "Enabled ANSI Color Code Sequences"	
	fi

	# ---------------------------------------------------------------------------
	# MESSAGE TYPES
	# ---------------------------------------------------------------------------
	if [ "$MESSAGE" == "true" ]; then
		info "Enabled Message Functions"
	fi
	
	exit 0
}

#================================================================
# GUI Bash Script Shell menu
#================================================================
#================================================================
# FUNCTION: gui
# DESCRIPTION:
#     Displays graphical menu interface in Bash and follows process for generating script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
gui() {
	info "Displaying graphical interface in Bash"

	# Check if whiptail is installed
	check_whiptail=$(dpkg -l | grep whiptail)
	if "$check_whiptail" | grep -q "whiptail"; then
		info "Whiptail has been detected to be installed on your system"
	else 
		important_error "Your system does not have Whiptail installed."
		exit 1
	fi	



	SCRIPT_NAME=$(whiptail --inputbox "Enter the name of the script" 8 39 --title "Script Name" 3>&1 1>&2 2>&3)
	exitstatus=$?
	if [ $exitstatus -eq 1 ] || [ -z "$SCRIPT_NAME" ]; then
		whiptail --title "Warning" --msgbox "You must provide a name for your script." 8 78
		$0
	else
		info "Script name: $SCRIPT_NAME"			
	fi	


	AUTHOR=$(whiptail --inputbox "Enter the name of the author" 8 39 --title "Author Name")
	exitstatus=$?
	if [ $exitstatus -eq 1 ] || [ -z "$AUTHOR" ]; then
		whiptail --title "Warning" --msgbox "You must provide the name of the author in your script." 8 78
		$0
	else
		info "Author: $AUTHOR"			
	fi	

	COLOR=false
	if whiptail --title "ANSI Color Code Escape Sequence Option" --yesno "Would you like to use ANSI Color Code Escape Sequences in your script? (ANSI Color Code Escape Sequences is required for displaying dialogs)" 8 78; then
		COLOR=true
		info "Enabled usage of ANSI Color Code Escape Sequences"
		echo "User selected Yes, exit status was $?."

	else
		info "Enabled usage of ANSI Color Code Escape Sequences"
	    	echo "User selected No, exit status was $?."
	fi

	if [[ "$COLOR" == "true" ]]; then
		ALL=false
		if whiptail --title "Add all ANSI Color Code Escape Sequences" --yesno "Would you like to add all ANSI escape sequences? This includes the following: All Colors, Normal, Bold, Italic & Background Colors" 8 78; then
			info "Enabled usage of ANSI Color Code Escape Sequences"
			echo "User selected Yes, exit status was $?."
			append_ansi
			ALL=true
		else
			info "Enabled usage of ANSI Color Code Escape Sequences"
			echo "User selected No, exit status was $?."
		fi
		
		if [[ "$ALL" == "false" ]]; then
			ALL_COLORS=false
			if whiptail --title "Add all ANSI Color escape sequences" --yesno "Add all colors from ANSI escape sequences?" 8 78; then
				ALL_COLORS=true
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected Yes, exit status was $?."

			else
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected No, exit status was $?."
			fi

			ALL_BG_COLORS=false
			if whiptail --title "Add all ANSI Background Color escape sequences" --yesno "Add all background colors from ANSI escape sequences?" 8 78; then
				ALL_BG_COLORS=true
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected Yes, exit status was $?."

			else
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected No, exit status was $?."
			fi

			ALL_FONT_STYLES=false
			if whiptail --title "Add all ANSI font style escape sequences" --yesno "Add all background colors from ANSI escape sequences?" 8 78; then
				ALL_FONT_STYLES=true
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected Yes, exit status was $?."

			else
				info "Enabled usage of ANSI Color Code Escape Sequences"
				echo "User selected No, exit status was $?."
			fi

		fi

		if [[ "$ALL_COLORS" == "false" ]]; then
			OPTIONS=(
				"BLACK" "" ON 
				"GREEN" "" OFF 
				"YELLOW" "" OFF 
				"BLUE" "" OFF 
				"MAGENTA" "" OFF 
				"CYAN" "" OFF 
				"LIGHT_GRAY" "" OFF 
				"GRAY" "" OFF 
				"LIGHT_RED" "" OFF 
				"LIGHT_GREEN" "" OFF 
				"LIGHT_YELLOW" "" OFF 
				"LIGHT_BLUE" "" OFF 
				"LIGHT_MAGENTA" "" OFF 
				"LIGHT_CYAN" "" OFF 
				"LIGHT_WHITE" "" OFF
			)

			CHOICES=$(whiptail --title "ANSI Color Code Escape Sequences" --checklist \
			"Select ANSI color code escape sequences" 20 78 12 \
			"${OPTIONS[@]}" 3>&1 1>&2 2>&3)

			EXIT_STATUS=$?

			if [[ $EXIT_STATUS = 0 ]]; then
				echo "You choice:" $CHOICES
				append_colors $CHOICES
			else
				echo "You choice Canccel."
			fi
		fi	

		if [[ "" == "false" ]]; then


		fi

		if [[ "" == "false" ]]; then
		

		fi

	fi

	if [[ "$ALL" == "false" ]]; then
		MESSAGE=false
		if whiptail --title "Message Dialog Option" --yesno "Would you like to use customized message dialogs on your script?" 8 78; then
			MESSAGE=true
			info "Enabled usage of message dialogs"
			echo "User selected Yes, exit status was $?."
		else
			info "Diabled usage of message dialogs"
			echo "User selected No, exit status was $?."
		fi

		if [[ "$MESSAGE" == "true" ]]; then
			# ==========================================================================
			# Font style options
			# ==========================================================================
			OPTIONS=(
				"Normal" "" ON
				"Bold" "" OFF 
				"Italic" "" OFF
				"Background" "" OFF
			)

			CHOICES=$(whiptail --title "ANSI Color Code Font Styles" --checklist \
				"Select Font Styles" 20 78 4 \
				"${OPTIONS[@]}" 3>&1 1>&2 2>&3)
			
			EXIT_STATUS=$?

			if [[ $EXIT_STATUS = 0 ]]; then
				echo "You choice:" $CHOICES
			else
				echo "You choice Cancel."
			fi

			# ==========================================================================
			# Message Type Options
			# ==========================================================================
			
			OPTIONS=(
				"Info" "Allow info messages" ON 
				"Success" "Allow success messages" OFF
				"Warning" "Allow warning messages" OFF 
				"Error" "Allow error messages" OFF 
				"All" "Allow all dialog messagess" OFF
			)
			
			CHOICES=$(whiptail --title "Message Types" --checklist \
				"Select dialog message types" 20 78 8 \
				"${OPTIONS[@]}" 3>&1 1>&2 2>&3)

			EXIT_STATUS=$?

			if [[ $EXIT_STATUS = 0 ]]; then
				echo "You choice:" $CHOICES
			else
				echo "You choice Cancel."
			fi

		fi
	fi

	OPTIONS=(
		"Apache-2.0" "Apache License 2.0" ON
		"GPL-3.0" "GNU General Public License v3.0" OFF 
		"MIT" "MIT License" OFF 
		"BSD-2-Clause" "BSD 2-clause 'Simplfied' license" OFF 
		"BSD-3-Clause" "BSD 3-clause 'New' or 'Revised' license" OFF 
		"BSL-1.0" "Boost Software License 1.0" OFF 
		"CC0-1.0" "Creative Commons Zero v1.0 Universal" OFF 
		"EPL-2.0" "Eclipse Public License 2.0" OFF 
		"AGPL-3.0" "GNU Affero General Public License v3.0" OFF 
		"LGPL-2.1" "GNU Lesser General Public License v2.1" OFF 
		"MPL-2.0" "Mozilla Public License 2.0" OFF 
		"Unlicense" "The Unlicense" OFF
	)

	CHOICES=$(whiptail --title "License Type" --radiolist "Choose License type" 25 78 16 \
		"${OPTIONS[@]}" 3>&1 1>&2 2>&3)

	EXIT_STATUS=$?

	if [[ $EXIT_STATUS = 0 ]]; then
		echo "You choice:" $CHOICES
	else
		echo "You choice Cancel."
	fi

	# Check if the script has been generated successfully	
	if [[ -e "$(pwd)/$SCRIPT_NAME.sh" ]]; then
		whiptail --title "Script Generated" --msgbox "The script has been successfully generated" 8 78
	else 
		whiptail --title "Error" --msgbox "Failed to generate script" 8 78
		exit 1
	fi

	notify-send -u normal \
		"Script Generated" \
		"The following script <b>$SCRIPT_NAME.sh</b> has been successfully generated on your system."

	success "Completed displaying graphical interface in Bash"

	exit 0
}

# Default usage information over here
while [[ "$#" -gt 0 ]]; do
	case $1 in
		--usage) usage ;;
		-h|--help) help ;;
		-n|--name) SCRIPT_NAME="$2"; shift ;;
		--licenses) display_licenses ;;
		-l|--license) LICENSE="$2"; shift ;;
		--color) COLOR=true; shift ;;
		--message) MESSAGE=true; shift ;;
		-gui|--graphical-interface) gui ;;
		*) error "Unknown parameter passed: $1"; exit 1 ;;
	esac
	shift
done

input_check

info "Generating script"
generate_script
success "Completed generating script"

exit 0

