#!/bin/bash
#================================================================
# HEADER
#================================================================
# Script Name   : template.sh
# Description   : This script generates shell scripts for shell 
# 		: scripting development
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
#     $1 - An info message
# RETURNS:
#     None
#================================================================
info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_info
# DESCRIPTION:
#     Prints bold info message using the provided parameter.
# PARAMETERS:
#     $1 - A bold info message
# RETURNS:
#     None
#================================================================
bold_info() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: success
# DESCRIPTION:
#     Prints success message using the provided parameter.
# PARAMETERS:
#     $1 - A success message
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
#     $1 - A warning message
# RETURNS:
#     None
#================================================================
warning() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_warning
# DESCRIPTION:
#     Prints bold warning message using the provided parameter.
# PARAMETERS:
#     $1 - A bold warning message
# RETURNS:
#     None
#================================================================
bold_warning() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: error
# DESCRIPTION:
#     Prints error message using the provided parameter.
# PARAMETERS:
#     $1 - An error message
# RETURNS:
#     None
#================================================================
error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"
}

#================================================================
# FUNCTION: bold_error
# DESCRIPTION:
#     Prints bold error message using the provided parameter.
# PARAMETERS:
#     $1 - A bold error message
# RETURNS:
#     None
#================================================================
bold_error() {
	local message=$1
	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"
}

# Global Variables
SCRIPT_NAME="" 
SCRIPT_TITLE=""
AUTHOR="" 
DESCRIPTION="" 
NOTES="" 
DEPENDENCIES="" 
LICENSE="" 
COLORS="" 
BG_COLORS=""
BOLD_COLORS="" 
ITALIC_COLORS="" 
FONT_STYLES=""
LOG_MESSAGE_TYPES="" 
COMMAND_LINE_INTERFACE=false 

#================================================================
# FUNCTION: matchingElement
# DESCRIPTION:
#     Check if an element is in the array
# PARAMETERS:
#     $1 - Element to compare
# RETURNS:
#     0 if element matches
#     1 if no element matches
#================================================================
matchingElement() {
	local element="$1"
	local array=("$@")

	for item in "${array[@]}"; do
		if [[ "$item" == "$element" ]]; then
			return 0
		fi
	done
	return 1
}

#################################################################
# Help & Usage                                               	# 
#################################################################
#================================================================
# FUNCTION: append_license
# DESCRIPTION:
#     Appends specified license type to the top header based on user's input.
# PARAMETERS:
#     $1 - A string inputted by the user that stores 'License Type'
# RETURNS:
#     None
#================================================================
append_license() {
	local CHOICES=$1
	IFS=" " read -r -a SELECTED_OPTIONS <<< "$CHOICES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"Apache-2.0")
				info "Writing Apache License 2.0 description to $SCRIPT_NAME.sh"
				echo "# Copyright $current_year $AUTHOR" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this" >> $SCRIPT_NAME.sh
				echo "# file except in compliance with the License. You may obtain a copy of the License at" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# http://www.apache.org/licenses/LICENSE-2.0" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				echo "# Unless required by applicable law or agreed to in writing, software distributed under" >> $SCRIPT_NAME.sh
				echo "# the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR" >> $SCRIPT_NAME.sh
				echo "# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific" >> $SCRIPT_NAME.sh
				echo "# language governing permissions and limitations under the License." >> $SCRIPT_NAME.sh
				success "Completed writing Apache License 2.0 description to $SCRIPT_NAME.sh"
				;;					
			"GPL-3.0")
				info "Writing GNU General Public License v3.0 description to $SCRIPT_NAME.sh"
				echo "# $SCRIPT_NAME.sh" >> $SCRIPT_NAME.sh
				echo "# Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
				echo "# " >> $SCRIPT_NAME.sh
				echo "# This program is free software: you can redistribute it and/or modify" >> $SCRIPT_NAME.sh
				echo "# it under the terms of the GNU General Public License as published by" >> $SCRIPT_NAME.sh
				echo "# the Free Software Foundation, either version 3 of the License, or" >> $SCRIPT_NAME.sh
				echo "# (at your option) any later version." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This program is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
				echo "# but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
				echo "# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> $SCRIPT_NAME.sh
				echo "# GNU General Public License for more details." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# You should have received a copy of the GNU General Public License" >> $SCRIPT_NAME.sh
				echo "# along with this program.  If not, see <https://www.gnu.org/licenses/>." >> $SCRIPT_NAME.sh
				success "Completed writing GNU General Public License v3.0 description to $SCRIPT_NAME.sh"
				;;
			"MIT")
				info "Writing MIT License description to $SCRIPT_NAME.sh"
				echo "# MIT License" >> $SCRIPT_NAME.sh
				echo "# Copyright (c) $current_year $AUTHOR" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Permission is hereby granted, free of charge, to any person obtaining a copy of this" >> $SCRIPT_NAME.sh
				echo "# software and associated documentation files (the "Software"), to deal in the Software" >> $SCRIPT_NAME.sh
				echo "# without restriction, including without limitation the rights to use, copy, modify, merge," >> $SCRIPT_NAME.sh
				echo "# publish, distribute, sublicense, and/or sell copies of the Software, and to permit" >> $SCRIPT_NAME.sh
				echo "# persons to whom the Software is furnished to do so, subject to the following" >> $SCRIPT_NAME.sh
				echo "# conditions:" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# The above copyright notice and this permission notice shall be included in all copies or" >> $SCRIPT_NAME.sh
				echo "# substantial portions of the Software." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
				echo "# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF" >> $SCRIPT_NAME.sh
				echo "# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT." >> $SCRIPT_NAME.sh
				echo "# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY" >> $SCRIPT_NAME.sh
				echo "# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT," >> $SCRIPT_NAME.sh
				echo "# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE" >> $SCRIPT_NAME.sh
				echo "# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE." >> $SCRIPT_NAME.sh
				success "Completed writing MIT License description to $SCRIPT_NAME.sh"
				;;
			"BSD-2-Clause")
				info "Writing BSD 2-clause 'Simplified' License description to $SCRIPT_NAME.sh"
				echo "# BSD 2-Clause License" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Copyright (c) $current_year, $AUTHOR" >> $SCRIPT_NAME.sh
				echo "# Redistribution and use in source and binary forms, with or without modification, are" >> $SCRIPT_NAME.sh
				echo "# permitted provided that the following conditions are met:" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# 1. Redistributions of source code must retain the above copyright notice, this list of" >> $SCRIPT_NAME.sh
				echo "#    conditions and the following disclaimer." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# 2. Redistributions in binary form must reproduce the above copyright notice, this list" >> $SCRIPT_NAME.sh
				echo "#    of conditions and the following disclaimer in the documentation and/or other" >> $SCRIPT_NAME.sh
				echo "#    materials provided with the distribution." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS" >> $SCRIPT_NAME.sh
				echo "# IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
				echo "# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR" >> $SCRIPT_NAME.sh
				echo "# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR" >> $SCRIPT_NAME.sh
				echo "# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL," >> $SCRIPT_NAME.sh
				echo "# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
				echo "# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR" >> $SCRIPT_NAME.sh
				echo "# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF" >> $SCRIPT_NAME.sh
				echo "# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING" >> $SCRIPT_NAME.sh
				echo "# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS" >> $SCRIPT_NAME.sh
				echo "# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE." >> $SCRIPT_NAME.sh
				success "Complete writing BSD 2-clause 'Simplified' License description to $SCRIPT_NAME.sh"
				;;
			"BSD-3-Clause")
				info "Writing BSD 3-clause 'New' or 'Revised' License description to $SCRIPT_NAME.sh"
				echo "# BSD 3-Clause License" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Copyright (c) $current_year, $AUTHOR" >> $SCRIPT_NAME.sh
				echo "# Redistribution and use in source and binary forms, with or without modification, are" >> $SCRIPT_NAME.sh
				echo "# permitted provided that the following conditions are met:" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# 1. Redistributions of source code must retain the above copyright notice, this list of" >> $SCRIPT_NAME.sh
				echo "#    conditions and the following disclaimer." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# 2. Redistributions in binary form must reproduce the above copyright notice, this list" >> $SCRIPT_NAME.sh
				echo "#    of conditions and the following disclaimer in the documentation and/or other" >> $SCRIPT_NAME.sh
				echo "#    materials provided with the distribution." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# 3. Neither the name of the copyright holder nor the names of its contributors may" >> $SCRIPT_NAME.sh
				echo "#    be used to endorse or promote products derived from this software without" >> $SCRIPT_NAME.sh
				echo "#    specific prior written permission." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS" >> $SCRIPT_NAME.sh
				echo "# IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
				echo "# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR" >> $SCRIPT_NAME.sh
				echo "# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR" >> $SCRIPT_NAME.sh
				echo "# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL," >> $SCRIPT_NAME.sh
				echo "# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO," >> $SCRIPT_NAME.sh
				echo "# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR" >> $SCRIPT_NAME.sh
				echo "# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF" >> $SCRIPT_NAME.sh
				echo "# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING" >> $SCRIPT_NAME.sh
				echo "# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS" >> $SCRIPT_NAME.sh
				echo "# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE." >> $SCRIPT_NAME.sh
				success "Completed writing BSD 3-clause 'New' or 'Revised' License description to $SCRIPT_NAME.sh"
				;;
			"BSL-1.0")
				info "Writing Boost Software License 1.0 description to $SCRIPT_NAME.sh"
				echo "# Boost Software License - Version 1.0 - August 17th, 2003" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Permission is hereby granted, free of charge, to any person or organization obtaining a" >> $SCRIPT_NAME.sh
				echo "# copy of the software and accompanying documentation covered by this license (the" >> $SCRIPT_NAME.sh
				echo "# \"Software\") to use, reproduce, display, distribute, execute, and transmit the Software," >> $SCRIPT_NAME.sh
				echo "# and to prepare derivative works of the Software, and to permit third-parties to whom" >> $SCRIPT_NAME.sh
				echo "# the Software is furnished to do so, all subject to the following:" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# The copyright notices in the Software and this entire statement, including the above" >> $SCRIPT_NAME.sh
				echo "# license grant, this restriction and the following disclaimer, must be included in all" >> $SCRIPT_NAME.sh
				echo "# copies of the Software, in whole or in part, and all derivative works of the Software," >> $SCRIPT_NAME.sh
				echo "# unless such copies or derivative works are solely in the form of machine-executable" >> $SCRIPT_NAME.sh
				echo "# object code generated by a source language processor." >> $SCRIPT_NAME.sh
				echo "# " >> $SCRIPT_NAME.sh
				echo "# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
				echo "# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF" >> $SCRIPT_NAME.sh
				echo "# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-" >> $SCRIPT_NAME.sh
				echo "# INFRINGEMENT. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR ANYONE" >> $SCRIPT_NAME.sh
				echo "# DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY," >> $SCRIPT_NAME.sh
				echo "# WHETHER IN CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN" >> $SCRIPT_NAME.sh
				echo "# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE" >> $SCRIPT_NAME.sh 
				echo "# SOFTWARE." >> $SCRIPT_NAME.sh
				success "Completed writing Boost Software License 1.0 description to $SCRIPT_NAME.sh"
				;;
			"CC0-1.0")
				info "Writing Creative Commons Zero v1.0 Universal License description to $SCRIPT_NAME.sh"
				echo "# The person who associated a work with this deed has dedicated the work to" >> $SCRIPT_NAME.sh
				echo "# the public domain by waiving all of his or her rights to the work worldwide" >> $SCRIPT_NAME.sh
				echo "# under copyright law, including all related and neighboring rights, to the extent" >> $SCRIPT_NAME.sh
				echo "# allowed by law." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# You can copy, modify, distribute and perform the work, even for commercial" >> $SCRIPT_NAME.sh
				echo "# purposes, all without asking permission. See Other Information below." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Other Information" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# In no way are the patent or trademark rights of any person affected by CC0," >> $SCRIPT_NAME.sh
				echo "# nor are the rights that other persons may have in the work or in how the work" >> $SCRIPT_NAME.sh
				echo "# is used, such as publicity or privacy rights." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Unless expressly stated otherwise, the person who associated a work with this" >> $SCRIPT_NAME.sh
				echo "# deed makes no warranties about the work, and disclaims liability for all uses" >> $SCRIPT_NAME.sh
				echo "# of the work, to the fullest extent permitted by applicable law." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# When using or citing the work, you should not imply endorsement by the" >> $SCRIPT_NAME.sh
				echo "# author or the affirmer." >> $SCRIPT_NAME.sh
				success "Completed writing Creative Commons Zero v1.0 Universal License description to $SCRIPT_NAME.sh"
				;;
			"EPL-2.0")
				info "Writing Eclipse Public License 2.0 description to $SCRIPT_NAME.sh"
				echo "# Copyright (c) $current_year $AUTHOR [and others]" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This program and the accompanying materials are made" >> $SCRIPT_NAME.sh
				echo "# available under the terms of the Eclipse Public License 2.0" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# SPDX-License-Identifier: EPL-2.0" >> $SCRIPT_NAME.sh
				success "Completed writing Eclipse Public License 2.0 description to $SCRIPT_NAME.sh"
				;;
			"AGPL-3.0")
				info "# Writing GNU Affero General Public License v3.0 description to $SCRIPT_NAME.sh"
				echo "# $SCRIPT_NAME" >> $SCRIPT_NAME.sh 
				echo "# Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This program is free software: you can redistribute it and/or modify" >> $SCRIPT_NAME.sh
				echo "# it under the terms of the GNU Affero General Public License as published" >> $SCRIPT_NAME.sh
				echo "# by the Free Software Foundation, either version 3 of the License, or" >> $SCRIPT_NAME.sh
				echo "# (at your option) any later version." >> $SCRIPT_NAME.sh
				echo "# " >> $SCRIPT_NAME.sh
				echo "# This program is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
				echo "# but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
				echo "# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" >> $SCRIPT_NAME.sh
				echo "# GNU Affero General Public License for more details." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# You should have received a copy of the GNU Affero General Public License" >> $SCRIPT_NAME.sh
				echo "# along with this program.  If not, see <https://www.gnu.org/licenses/>." >> $SCRIPT_NAME.sh
				success "Completed writing GNU Affero General Public License v3.0 description to $SCRIPT_NAME.sh"
				;;
			"LGPL-2.1")
				info "Writing GNU Lesser General Public License v2.1 description to $SCRIPT_NAME.sh"
				echo "# $SCRIPT_NAME" >> $SCRIPT_NAME.sh 
				echo "# Copyright (C) $current_year  $AUTHOR" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This library is free software; you can redistribute it and/or" >> $SCRIPT_NAME.sh
				echo "# modify it under the terms of the GNU Lesser General Public" >> $SCRIPT_NAME.sh
				echo "# License as published by the Free Software Foundation; either" >> $SCRIPT_NAME.sh
				echo "# version 2.1 of the License, or (at your option) any later version." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This library is distributed in the hope that it will be useful," >> $SCRIPT_NAME.sh
				echo "# but WITHOUT ANY WARRANTY; without even the implied warranty of" >> $SCRIPT_NAME.sh
				echo "# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU" >> $SCRIPT_NAME.sh
				echo "# Lesser General Public License for more details." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# You should have received a copy of the GNU Lesser General Public" >> $SCRIPT_NAME.sh
				echo "# License along with this library; if not, write to the Free Software" >> $SCRIPT_NAME.sh
				echo "# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301" >> $SCRIPT_NAME.sh
				echo "# USA" >> $SCRIPT_NAME.sh
				success "Completed writing GNU Lesser General Public License v2.1 description to $SCRIPT_NAME.sh"
				;;
			"MPL-2.0")
				info "Writing Mozilla Public License 2.0 description to $SCRIPT_NAME.sh"
				echo "# Mozilla Public License 2.0" >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# This Source Code Form is subject to the terms of the Mozilla Public" >> $SCRIPT_NAME.sh
				echo "# License, v. 2.0. If a copy of the MPL was not distributed with this" >> $SCRIPT_NAME.sh
				echo "# file, You can obtain one at https://mozilla.org/MPL/2.0/." >> $SCRIPT_NAME.sh
				success "Completed writing Mozilla Public License 2.0 description to $SCRIPT_NAME.sh"
				;;
			"Unlicense")
				info "Writing unlicense description to $SCRIPT_NAME.sh"
				echo "# This is free and unencumbered software released into the public domain." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software," >> $SCRIPT_NAME.sh
				echo "# either in source code form or as a compiled binary, for any purpose, commercial or" >> $SCRIPT_NAME.sh
				echo "# non-commercial, and by any means." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# In jurisdictions that recognize copyright laws, the author or authors of this software" >> $SCRIPT_NAME.sh
				echo "# dedicate any and all copyright interest in the software to the public domain. We make" >> $SCRIPT_NAME.sh
				echo "# this dedication for the benefit of the public at large and to the detriment of our heirs" >> $SCRIPT_NAME.sh
				echo "# and successors. We intend this dedication to be an overt act of relinquishment in" >> $SCRIPT_NAME.sh
				echo "# perpetuity of all present and future rights to this software under copyright law." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS" >> $SCRIPT_NAME.sh
				echo "# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES" >> $SCRIPT_NAME.sh
				echo "# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND" >> $SCRIPT_NAME.sh
				echo "# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM," >> $SCRIPT_NAME.sh
				echo "# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR" >> $SCRIPT_NAME.sh
				echo "# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR" >> $SCRIPT_NAME.sh
				echo "# THE USE OR OTHER DEALINGS IN THE SOFTWARE." >> $SCRIPT_NAME.sh
				echo "#" >> $SCRIPT_NAME.sh
				echo "# For more information, please refer to https://unlicense.org" >> $SCRIPT_NAME.sh
				success "Completed writing unlicense description to $SCRIPT_NAME.sh"
				;;
		esac
	done
}

#================================================================
# FUNCTION: append_escape_sequences
# DESCRIPTION:
#     Appends specified ANSI escape sequence on the top of the script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_escape_sequences() {
	echo "#################################################################" >> $SCRIPT_NAME.sh
	echo "# ANSI Color Code Escape Sequences			        #" >> $SCRIPT_NAME.sh
	echo "#################################################################" >> $SCRIPT_NAME.sh

	if [[ -n "$COLORS" ]]; then
		echo "" >> $SCRIPT_NAME.sh
		echo "# Colors" >> $SCRIPT_NAME.sh
		IFS="," read -r -a SELECTED_OPTIONS <<< "$COLORS"
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
	fi

	if [[ -n "$BG_COLORS" ]]; then
		echo "" >> $SCRIPT_NAME.sh
		echo "# Background Colors" >> $SCRIPT_NAME.sh
		IFS="," read -r -a SELECTED_OPTIONS <<< "$BG_COLORS"
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
	fi

	if [[ -n "$BOLD_COLORS" ]]; then
		echo "" >> $SCRIPT_NAME.sh
		echo "# Bold" >> $SCRIPT_NAME.sh
		IFS="," read -r -a SELECTED_OPTIONS <<< "$BOLD_COLORS"
		for OPTION in "${SELECTED_OPTIONS[@]}"; do
			case $OPTION in
				"BOLD_BLACK")
					info "Adding Bold Black ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_BLACK="\e[1;30m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_RED")
					info "Adding Bold Red ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_RED="\e[1;31m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_GREEN")
					info "Adding Bold Green ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_GREEN="\e[1;32m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_YELLOW")
					info "Adding Bold Yellow ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_YELLOW="\e[1;33m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_BLUE")
					info "Adding Bold Blue ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_BLUE="\e[1;34m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_MAGENTA")
					info "Adding Bold Magenta ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_MAGENTA="\e[1;35m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_CYAN")
					info "Adding Bold Cyan ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_CYAN="\e[1;36m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_GRAY")
					info "Adding Bold Light Gray ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_GRAY="\e[1;37m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_GRAY")
					info "Adding Bold Gray ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_GRAY="\e[1;90m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_RED")
					info "Adding Bold Light Red ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_RED="\e[1;91m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_GREEN")
					info "Adding Bold Light Green ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_GREEN="\e[1;92m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_YELLOW")
					info "Adding Bold Light Yellow ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_YELLOW="\e[1;93m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_BLUE")
					info "Adding Bold Light Blue ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_BLUE="\e[1;94m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_MAGENTA")
					info "Adding Bold Light Magenta ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_MAGENTA="\e[1;95m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_LIGHT_CYAN")
					info "Adding Bold Light Cyan ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_LIGHT_CYAN="\e[1;96m"' >> $SCRIPT_NAME.sh
					;;
				"BOLD_WHITE")
					info "Adding Bold White ANSI color code to $SCRIPT_NAME.sh"
					echo 'BOLD_WHITE="\e[1;97m"' >> $SCRIPT_NAME.sh
					;;
			esac
		done
	fi

	if [[ -n "$ITALIC_COLORS" ]]; then
		echo "" >> $SCRIPT_NAME.sh
		echo "# Italic" >> $SCRIPT_NAME.sh
		IFS="," read -r -a SELECTED_OPTIONS <<< "$ITALIC_COLORS"
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
	fi

	if [[ -n "$FONT_STYLES" ]]; then
		echo "" >> $SCRIPT_NAME.sh
		echo "# Styles" >> $SCRIPT_NAME.sh
		IFS="," read -r -a SELECTED_OPTIONS <<< "$FONT_STYLES"
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
	fi

	echo "" >> $SCRIPT_NAME.sh
	echo 'ENDCOLOR="\e[0m"' >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
}

#================================================================
# FUNCTION: append_cl_argument_parsing
# DESCRIPTION:
#     Implements command line argument parsing interface if 
#     boolean value COMMAND_LINE_INTERFACE is true.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_cl_argument_parsing() {
	if [ "$COMMAND_LINE_INTERFACE" == "true" ]; then
		info "Implementing the Command Line Interface on $SCRIPT_NAME.sh"
		echo "#================================================================" >> $SCRIPT_NAME.sh
		echo "# FUNCTION: usage" >> $SCRIPT_NAME.sh
		echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
		echo "#     Prints default usage information." >> $SCRIPT_NAME.sh
		echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
		echo "#     None" >> $SCRIPT_NAME.sh
		echo "# RETURNS:" >> $SCRIPT_NAME.sh
		echo "#     None" >> $SCRIPT_NAME.sh
		echo "#================================================================" >> $SCRIPT_NAME.sh
		echo "usage() {" >> $SCRIPT_NAME.sh

		if [ -z "$SCRIPT_TITLE" ] || [ "$SCRIPT_TITLE" == " " ]; then
			echo "	echo \"$SCRIPT_NAME\"" >> $SCRIPT_NAME.sh
		else 
			echo "	echo \"$SCRIPT_TITLE\"" >> $SCRIPT_NAME.sh
		fi

		echo "  	echo \" \"" >> $SCRIPT_NAME.sh
		echo "	echo \"Usage: ./$SCRIPT_NAME.sh [options]\"" >> $SCRIPT_NAME.sh
	        echo "	exit 0" >> $SCRIPT_NAME.sh
		echo "}" >> $SCRIPT_NAME.sh

		echo " " >> $SCRIPT_NAME.sh

		echo "#================================================================" >> $SCRIPT_NAME.sh
		echo "# FUNCTION: help" >> $SCRIPT_NAME.sh
		echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
		echo "#     Prints default help information." >> $SCRIPT_NAME.sh
		echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
		echo "#     None" >> $SCRIPT_NAME.sh
		echo "# RETURNS:" >> $SCRIPT_NAME.sh
		echo "#     None" >> $SCRIPT_NAME.sh
		echo "#================================================================" >> $SCRIPT_NAME.sh
		echo "help() {" >> $SCRIPT_NAME.sh

		if [ -z "$SCRIPT_TITLE" ] || [ "$SCRIPT_TITLE" == " " ]; then
			echo "	echo \"$SCRIPT_NAME\"" >> $SCRIPT_NAME.sh
		else 
			echo "	echo \"$SCRIPT_TITLE\"" >> $SCRIPT_NAME.sh
		fi

		echo "	echo \" \"" >> $SCRIPT_NAME.sh
		echo "	echo \"Usage: ./$SCRIPT_NAME.sh [options]\"" >> $SCRIPT_NAME.sh
		echo "	echo \" \"" >> $SCRIPT_NAME.sh
		echo "	echo \"Options:\"" >> $SCRIPT_NAME.sh
	        echo "  	printf \"  \${BOLD}--usage\${ENDCOLOR}						Show usage information\n\"" >> $SCRIPT_NAME.sh
	        echo "	printf \"  \${BOLD}-h, --help\${ENDCOLOR}						Show help message\n\"" >> $SCRIPT_NAME.sh
	        echo "	echo \" \"" >> $SCRIPT_NAME.sh
		echo "	exit 0" >> $SCRIPT_NAME.sh
		echo "}" >> $SCRIPT_NAME.sh

		echo " " >> $SCRIPT_NAME.sh

		echo "VARIABLE=\"\"" >> $SCRIPT_NAME.sh
		echo "VERBOSE=false" >> $SCRIPT_NAME.sh
		echo " " >> $SCRIPT_NAME.sh
		echo "while [[ \"\$#\" -gt 0 ]]; do" >> $SCRIPT_NAME.sh
	        echo "	case $1 in" >> $SCRIPT_NAME.sh
		echo "		-u|--usage) usage ;;" >> $SCRIPT_NAME.sh
		echo "		-h|--help) help ;;" >> $SCRIPT_NAME.sh
		echo "		-v|--variable) VARIABLE=\"\$2\"; shift ;;" >> $SCRIPT_NAME.sh
		echo "		--verbose) VERBOSE=true ;;" >> $SCRIPT_NAME.sh
		echo "		*) error \"Unknown parameter passed: $1\"; exit 1 ;;" >> $SCRIPT_NAME.sh
		echo "	esac" >> $SCRIPT_NAME.sh
		echo "	shift" >> $SCRIPT_NAME.sh
		echo "done" >> $SCRIPT_NAME.sh
	fi

	success "Completed implementing Command Line Interface on $SCRIPT_NAME.sh"
}

#================================================================
# FUNCTION: generate_script
# DESCRIPTION:
#     Generates complete shell script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
generate_script() {
	touch $SCRIPT_NAME.sh

	echo "#!/bin/bash" > $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# HEADER " >> $SCRIPT_NAME.sh
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "# Script Name    : $SCRIPT_NAME.sh" >> $SCRIPT_NAME.sh
	append_description "Description" "$DESCRIPTION"
	echo "# Author         : $AUTHOR" >> $SCRIPT_NAME.sh
	echo "# Date           : $current_date" >> $SCRIPT_NAME.sh
	echo "# Version        : 1.0" >> $SCRIPT_NAME.sh
	echo "# Usage          : ./$SCRIPT_NAME.sh" >> $SCRIPT_NAME.sh
	append_description "Notes" "$NOTES"
	append_description "Dependencies" "$DEPENDENCIES"
	echo "#================================================================" >> $SCRIPT_NAME.sh
	append_license "$LICENSE"
	echo "#================================================================" >> $SCRIPT_NAME.sh
	echo "" >> $SCRIPT_NAME.sh
	append_escape_sequences
	append_messages
	append_cl_argument_parsing
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
        echo "Shell Script Template Generator"
	echo " "
	echo "Usage: ./template [modes] [options]"
	exit 0
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
        echo "Shell Script Template Generator"
	echo " "
	echo "Usage: ./template.sh [modes] [options]"
	echo " "
        echo "Options:"
       	printf "  ${BOLD}--usage${ENDCOLOR}						Show usage information\n"
        printf "  ${BOLD}-h, --help${ENDCOLOR}						Show help message\n"
        printf "  ${BOLD}-n, --name <FILE_NAME>${ENDCOLOR}				Specify script file name\n"
        printf "  ${BOLD}-t, --title <SCRIPT_TITLE>${ENDCOLOR}				Specify official title of the script\n"
        printf "  ${BOLD}-a, --author <AUTHOR>${ENDCOLOR}					Specify name of the author\n"
        printf "  ${BOLD}-d, --description <DESCRIPTION>${ENDCOLOR}			Specify description\n"
        printf "  ${BOLD}-ns, --notes <NOTES>${ENDCOLOR}					Specify notes\n"
        printf "  ${BOLD}-dp, --dependencies <DEPENDENCIES>${ENDCOLOR}			Specify required dependencies\n"
        printf "  ${BOLD}-l, --license <LICENSE_TYPE>${ENDCOLOR}				Specify license type\n"
	echo " "
        echo "ANSI Color Code Options:"
        printf "  ${BOLD}-c, --colors <STANDARD_COLORS>${ENDCOLOR}			Specify standard ANSI color code escape sequences\n"
       	printf "  ${BOLD}-ac, --all-colors${ENDCOLOR}					Implement all standard ANSI color code escape sequences\n"
       	printf "  ${BOLD}-bgc, --bg-colors <BACKGROUND_COLORS>${ENDCOLOR}			Specify background ANSI color code escape sequences\n"
       	printf "  ${BOLD}-abgc, --all-bg-colors${ENDCOLOR}				Implement all background ANSI color code escape sequences\n"
       	printf "  ${BOLD}-ic, --italic-colors <ITALIC_COLORS>${ENDCOLOR}			Specify italic ANSI color code escape sequences\n"
       	printf "  ${BOLD}-aic, --all-italic-colors${ENDCOLOR}				Implement all italic ANSI color code escape sequences\n"
       	printf "  ${BOLD}-boc, --bold-colors <BOLD_COLORS>${ENDCOLOR}			Specify bold ANSI color code escape sequences\n"
       	printf "  ${BOLD}-aboc, --all-bold-colors${ENDCOLOR}				Implement all bold ANSI color code escape sequences\n"
	echo " "
        echo "Font Options:"
       	printf "  ${BOLD}-fs, --font-styles <FONT_STYLES>${ENDCOLOR}			Specify ANSI font style color code escape sequences\n"
	printf "  ${BOLD}-afs, --all-font-styles${ENDCOLOR}				Implement all font styles (BOLD & ITALIC)\n"
	echo " "
        echo "Message Options:"
        printf "  ${BOLD}-mt, --message-types <LOG_MESSAGE_TYPES>${ENDCOLOR}		Specify log message types\n"
       	printf "  ${BOLD}--show-messages${ENDCOLOR}					Display a list of messages as functions to use in script\n"
	echo " "
        echo "Command-Line Interface Option:"
	printf "  ${BOLD}-cli, --command-line-interface${ENDCOLOR}			Implements Command-Line interface (USAGE, HELP & parsing argument menu)\n"
        echo " "
        echo "Mode:"
	printf "  ${BOLD}gui${ENDCOLOR}							Enters GUI mode (Whiptail) \n"
        echo " "
        echo "Help Options:"
        printf "  ${BOLD}--licenses${ENDCOLOR}						Show list of license types\n"
        printf "  ${BOLD}--show-ansi${ENDCOLOR}						Show list of available ANSI escape sequences\n"
        echo " "
        echo "Other:"
	printf "  ${BOLD}--all${ENDCOLOR}							Implement all features (all ANSI escape sequences, message functions and CLI)\n"
	echo " "
	exit 0
}

#================================================================
# FUNCTION: append_description
# DESCRIPTION:
#     Appends and formats paragraph (notes, dependencies & description) 
#     to explain what is and the purpose of the script.
# PARAMETERS:
#     $1 - Type of paragraph
#     $2 - Basic specified description
# RETURNS:
#     None
#================================================================
append_description() {
	local OPTION_TYPE="$1"
	local DESCRIPTION="$2"

	char_length=${#DESCRIPTION}
	if [ "$char_length" -ge 48 ]; then
		folded_text=$(echo "$DESCRIPTION" | fold -sw 48)
		first_line=$(echo "$folded_text" | head -n 1)
		rest_lines=$(echo "$folded_text" | tail -n +2)

		if [ "$OPTION_TYPE" == "Description" ]; then
			formatted_first_line=$(echo "# Description    : $first_line")
		fi

		if [ "$OPTION_TYPE" == "Notes" ]; then
			formatted_first_line=$(echo "# Notes          : $first_line")
		fi

		if [ "$OPTION_TYPE" == "Dependencies" ]; then
			formatted_first_line=$(echo "# Dependencies   : $first_line")
		fi

		formatted_rest_lines=$(echo "$rest_lines" | sed 's/^/# 		 : /')

		echo "$formatted_first_line" >> $SCRIPT_NAME.sh
		echo "$formatted_rest_lines" >> $SCRIPT_NAME.sh
	else 
		if [ "$OPTION_TYPE" == "Description" ]; then
			echo "# Description    : $DESCRIPTION" >> $SCRIPT_NAME.sh
		fi

		if [ "$OPTION_TYPE" == "Notes" ]; then
			echo "# Notes          : $DESCRIPTION" >> $SCRIPT_NAME.sh
		fi

		if [ "$OPTION_TYPE" == "Dependencies" ]; then
			echo "# Dependencies   : $DESCRIPTION" >> $SCRIPT_NAME.sh
		fi
	fi
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
# FUNCTION: all
# DESCRIPTION:
#     Implements and enables all components for complete version of shell script.
#     This includes all ANSI color code escape sequences, message types 
#     and its command-line interface.
# GLOBALS:
#     COLORS - Specifies standard ANSI color code escape sequences
#     BG_COLORS - Specifies background ANSI color code escape sequences
#     ITALIC_COLORS - Specieis italic ANSI color code escape sequences
#     BOLD_COLORS - Specifies bold ANSI color code escape sequences
#     FONT_STYLES - Specifies ANSI font style color code escape sequences
#     LOG_MESSAGE_TYPES - Specifies types of message
#     COMMAND_LINE_INTERFACE - Implements command-line interface (USAGE, HELP & parsing argument interface)
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
all() {
	# Colors
	COLORS="BLACK,GREEN,YELLOW,BLUE,MAGENTA,CYAN,LIGHT_GRAY,GRAY,LIGHT_RED,LIGHT_GREEN,LIGHT_YELLOW,LIGHT_BLUE,LIGHT_MAGENTA,LIGHT_CYAN,LIGHT_WHITE" 
	BG_COLORS="BLACK_BG,RED_BG,GREEN_BG,YELLOW_BG,BLUE_BG,MAGENTA_BG,CYAN_BG,WHITE_BG" 
	ITALIC_COLORS="ITALIC_BLACK,ITALIC_RED,ITALIC_GREEN,ITALIC_YELLOW,ITALIC_BLUE,ITALIC_MAGENTA,ITALIC_CYAN,ITALIC_LIGHT_GRAY,ITALIC_GRAY,ITALIC_LIGHT_RED,ITALIC_LIGHT_GREEN,ITALIC_LIGHT_YELLOW,ITALIC_LIGHT_BLUE,ITALIC_LIGHT_MAGENTA,ITALIC_LIGHT_CYAN,ITALIC_WHITE" 
	BOLD_COLORS="BOLD_BLACK,BOLD_RED,BOLD_GREEN,BOLD_YELLOW,BOLD_BLUE,BOLD_MAGENTA,BOLD_CYAN,BOLD_LIGHT_GRAY,BOLD_GRAY,BOLD_LIGHT_RED,BOLD_LIGHT_GREEN,BOLD_LIGHT_YELLOW,BOLD_LIGHT_BLUE,BOLD_LIGHT_MAGENTA,BOLD_LIGHT_CYAN,BOLD_WHITE" 
	# Font Styles
	FONT_STYLES="BOLD,ITALIC"	

	# Message Types
	LOG_MESSAGE_TYPES="Info,Success,Warning,Error"

	# Command Line Interface
	COMMAND_LINE_INTERFACE=true
}

#================================================================
# FUNCTION: all_font_styles
# DESCRIPTION:
#     Implements and enables all ANSI font style escape sequences.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
all_font_styles() {
	FONT_STYLES="BOLD,ITALIC"	
}

#================================================================
# FUNCTION: show_ansi
# DESCRIPTION:
#     Prints all ANSI escape sequences available from this script.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
show_ansi() {
	echo "Shell Script Template Generator"
	echo " " 
	echo "ANSI color code escape sequences"
	echo ""
	printf "${BOLD}Standard${ENDCOLOR}\n"
	printf "BLACK			${BLACK}BLACK${ENDCOLOR}\n"
	printf "RED			${RED}RED${ENDCOLOR}\n"
	printf "GREEN			${GREEN}GREEN${ENDCOLOR}\n"
	printf "YELLOW			${YELLOW}YELLOW${ENDCOLOR}\n"
	printf "BLUE			${BLUE}BLUE${ENDCOLOR}\n"
	printf "MAGENTA			${MAGENTA}MAGENTA${ENDCOLOR}\n"
	printf "CYAN			${CYAN}CYAN${ENDCOLOR}\n"
	printf "LIGHT_GRAY		${LIGHT_GRAY}LIGHT_GRAY${ENDCOLOR}\n"
	printf "GRAY			${GRAY}GRAY${ENDCOLOR}\n"
	printf "LIGHT_RED		${LIGHT_RED}LIGHT_RED${ENDCOLOR}\n"
	printf "LIGHT_GREEN		${LIGHT_GREEN}LIGHT_GREEN${ENDCOLOR}\n"
	printf "LIGHT_YELLOW		${LIGHT_YELLOW}LIGHT_YELLOW${ENDCOLOR}\n"
	printf "LIGHT_BLUE		${LIGHT_BLUE}LIGHT_BLUE${ENDCOLOR}\n"
	printf "LIGHT_MAGENTA		${LIGHT_MAGENTA}LIGHT_MAGENTA${ENDCOLOR}\n"
	printf "LIGHT_CYAN		${LIGHT_CYAN}LIGHT_CYAN${ENDCOLOR}\n"
	printf "WHITE			${WHITE}WHITE${ENDCOLOR}\n"
	echo ""

	# Bold
	printf "${BOLD}Bold${ENDCOLOR}\n"
	printf "BOLD_BLACK		${BOLD_BLACK}BOLD_BLACK${ENDCOLOR}\n"
	printf "BOLD_RED		${BOLD_RED}BOLD_RED${ENDCOLOR}\n"
	printf "BOLD_GREEN		${BOLD_GREEN}BOLD_GREEN${ENDCOLOR}\n"
	printf "BOLD_YELLOW		${BOLD_YELLOW}BOLD_YELLOW${ENDCOLOR}\n"
	printf "BOLD_BLUE		${BOLD_BLUE}BOLD_BLUE${ENDCOLOR}\n"
	printf "BOLD_MAGENTA		${BOLD_MAGENTA}BOLD_MAGENTA${ENDCOLOR}\n"
	printf "BOLD_CYAN		${BOLD_CYAN}BOLD_CYAN${ENDCOLOR}\n"
	printf "BOLD_LIGHT_GRAY		${BOLD_LIGHT_GRAY}BOLD_LIGHT_GRAY${ENDCOLOR}\n"
	printf "BOLD_GRAY		${BOLD_GRAY}BOLD_GRAY${ENDCOLOR}\n"
	printf "BOLD_LIGHT_RED		${BOLD_LIGHT_RED}BOLD_LIGHT_RED${ENDCOLOR}\n"
	printf "BOLD_LIGHT_GREEN	${BOLD_LIGHT_GREEN}BOLD_LIGHT_GREEN${ENDCOLOR}\n"
	printf "BOLD_LIGHT_YELLOW	${BOLD_LIGHT_YELLOW}BOLD_LIGHT_YELLOW${ENDCOLOR}\n"
	printf "BOLD_LIGHT_BLUE		${BOLD_LIGHT_BLUE}BOLD_LIGHT_BLUE${ENDCOLOR}\n"
	printf "BOLD_LIGHT_MAGENTA	${BOLD_LIGHT_MAGENTA}BOLD_LIGHT_MAGENTA${ENDCOLOR}\n"
	printf "BOLD_LIGHT_CYAN		${BOLD_LIGHT_CYAN}BOLD_LIGHT_CYAN${ENDCOLOR}\n"
	printf "BOLD_WHITE		${BOLD_WHTIE}BOLD_WHITE${ENDCOLOR}\n"
	echo ""

	# Italic
	printf "${BOLD}Italic${ENDCOLOR}\n"
	printf "ITALIC_BLACK		${ITALIC_BLACK}ITALIC_BLACK${ENDCOLOR}\n"
	printf "ITALIC_RED		${ITALIC_RED}ITALIC_RED${ENDCOLOR}\n"
	printf "ITALIC_GREEN		${ITALIC_GREEN}ITALIC_GREEN${ENDCOLOR}\n"
	printf "ITALIC_YELLOW		${ITALIC_YELLOW}ITALIC_YELLOW${ENDCOLOR}\n"
	printf "ITALIC_BLUE		${ITALIC_BLUE}ITALIC_BLUE${ENDCOLOR}\n"
	printf "ITALIC_MAGENTA		${ITALIC_MAGENTA}ITALIC_MAGENTA${ENDCOLOR}\n"
	printf "ITALIC_CYAN		${ITALIC_CYAN}ITALIC_CYAN${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_GRAY	${ITALIC_LIGHT_GRAY}ITALIC_LIGHT_GRAY${ENDCOLOR}\n"
	printf "ITALIC_GRAY		${ITALIC_GRAY}ITALIC_GRAY${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_RED	${ITALIC_LIGHT_RED}ITALIC_LIGHT_RED${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_GREEN	${ITALIC_LIGHT_GREEN}ITALIC_LIGHT_GREEN${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_YELLOW	${ITALIC_LIGHT_YELLOW}ITALIC_LIGHT_YELLOW${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_BLUE	${ITALIC_LIGHT_BLUE}ITALIC_LIGHT_BLUE${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_MAGENTA	${ITALIC_LIGHT_MAGENTA}ITALIC_LIGHT_MAGENTA${ENDCOLOR}\n"
	printf "ITALIC_LIGHT_CYAN	${ITALIC_LIGHT_CYAN}ITALIC_LIGHT_CYAN${ENDCOLOR}\n"
	printf "ITALIC_WHITE		${ITALIC_WHITE}ITALIC_WHITE${ENDCOLOR}\n"
	echo ""

	# Background Color
	printf "${BOLD}Background${ENDCOLOR}\n"
	printf "BLACK_BG		${BLACK_BG}BLACK_BG${ENDCOLOR}\n"
	printf "RED_BG			${RED_BG}RED_BG${ENDCOLOR}\n"
	printf "GREEN_BG		${GREEN_BG}GREEN_BG${ENDCOLOR}\n"
	printf "YELLOW_BG		${YELLOW_BG}YELLOW_BG${ENDCOLOR}\n"
	printf "BLUE_BG			${BLUE_BG}BLUE_BG${ENDCOLOR}\n"
	printf "MAGENTA_BG		${MAGENTA_BG}MAGENTA_BG${ENDCOLOR}\n"
	printf "CYAN_BG			${CYAN_BG}CYAN_BG${ENDCOLOR}\n"
	printf "WHITE_BG		${WHITE_BG}WHITE_BG${ENDCOLOR}\n"
	echo ""
	
	# Styles
	printf "${BOLD}Styles${ENDCOLOR}\n"
	printf "BOLD			${BOLD}BOLD${ENDCOLOR}\n"
	printf "ITALIC			${ITALIC}ITALIC${ENDCOLOR}\n"

	exit 0
}

#================================================================
# Message Types
#================================================================
#================================================================
# FUNCTION: display_messages
# DESCRIPTION:
#     Prints all log message types.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
display_messages() {
        echo "Shell Script Template Generator"
	echo " " 
	echo "Log Level Message Types"
	echo ""
	printf "${BOLD}INFO${ENDCOLOR}\n"
	printf "${ITALIC}Provides normal insight during operation fo the state of the application${ENDCOLOR}\n"
	info "This is an info log message"
	echo ""
	printf "${BOLD}SUCCESS${ENDCOLOR}\n"
	printf "${ITALIC}Alerts whether an operation or process has completed successfully${ENDCOLOR}\n"
	success "This is a success log message"
	echo ""
	printf "${BOLD}WARNING${ENDCOLOR}\n"
	printf "${ITALIC}Indicates a potential issue or unexpected problem while running the application${ENDCOLOR}\n"
	warning "This is a warning log message"
	echo "" 
	printf "${BOLD}ERROR${ENDCOLOR}\n"
	printf "${ITALIC}Critically indicates a serious problem that causes the script or application to fail${ENDCOLOR}\n"
	error "This is an error log message"
	exit 0
}

#================================================================
# FUNCTION: append_messages
# DESCRIPTION:
#     Appends selected types of messages to the script based on 
#     user's option.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
append_messages() {
	IFS="," read -r -a SELECTED_OPTIONS <<< "$LOG_MESSAGE_TYPES"

	for OPTION in "${SELECTED_OPTIONS[@]}"; do
		case $OPTION in
			"Info")
				info "Implementing Info message function to $SCRIPT_NAME.sh"
				echo "" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: info" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints info message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "info() {" >> $SCRIPT_NAME.sh
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				info "Implementing Bold Info message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: bold_info" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints bold info message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "bold_info() {" >> $SCRIPT_NAME.sh
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}INFO${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				;;
			"Success")
				info "Implementing success message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: success" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints success message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "success() {" >> $SCRIPT_NAME.sh
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_GREEN}SUCCESS${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				;;
			"Warning")
				info "Implementing warning message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: warning" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints warning message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "warning() {" >> $SCRIPT_NAME.sh
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				info "Implementing bold warning message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: bold_warning" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints bold warning message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "bold_warning() {" >> $SCRIPT_NAME.sh
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo ' 	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_YELLOW}WARNING${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				;;
			"Error")
				info "Implementing error message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: error" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints error message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "error() {" >> $SCRIPT_NAME.sh	
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				info "Implementing bold error message function to $SCRIPT_NAME.sh"
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "# FUNCTION: bold_error" >> $SCRIPT_NAME.sh
				echo "# DESCRIPTION:" >> $SCRIPT_NAME.sh
				echo "#     Prints bold error message using the provided parameter." >> $SCRIPT_NAME.sh
				echo "# PARAMETERS:" >> $SCRIPT_NAME.sh
				echo "#     \$1 - A message" >> $SCRIPT_NAME.sh
				echo "# RETURNS:" >> $SCRIPT_NAME.sh
				echo "#     None" >> $SCRIPT_NAME.sh
				echo "#================================================================" >> $SCRIPT_NAME.sh
				echo "bold_error() {" >> $SCRIPT_NAME.sh	
				echo "	local message=\$1" >> $SCRIPT_NAME.sh
				echo '	printf "${WHITE}[${ENDCOLOR}${CYAN}$current_time${ENDCOLOR}${WHITE}]${ENDCOLOR} ${WHITE}[${ENDCOLOR}${BOLD_RED}ERROR${ENDCOLOR}${WHITE}]${ENDCOLOR} ${BOLD_WHITE}$1${ENDCOLOR}\n"' >> $SCRIPT_NAME.sh
				echo "}" >> $SCRIPT_NAME.sh
				echo "" >> $SCRIPT_NAME.sh
				;;
		esac
	done
}

#================================================================
# FUNCTION: input_check
# DESCRIPTION:
#     Checks and verifies all user inputs from global variables to ensure
#     it meets the requirements by format.
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
input_check() {
	# Script Name
	if [ -z "$SCRIPT_NAME" ]; then
		error "Invalid script name. The file name of the script must be specified"	
		exit 1
	fi
	info "Script name: $SCRIPT_NAME"

	# Author
	if [ -n "$AUTHOR" ]; then
		info "Author: $AUTHOR"
	fi

	# Description
	if [ -n "$DESCRIPTION" ]; then
		info "Description: $DESCRIPTION"
	fi

	# Notes
	if [ -n "$NOTES" ]; then
		info "Notes: $NOTES"
	fi

	# Dependencies
	if [ -n "$DEPENDENCIES" ]; then
		info "Dependencies: $DEPENDENCIES"
	fi

	# LICENSE
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
			error "Unknown license type for the following: $LICENSE"
			exit 1
		fi	
	
		info "License Type: $LICENSE"
	else 
		error "Invalid License type. The license type must be selected."
		exit 1
	fi

	# Check for color inputs here
	if [ -n "$COLORS" ]; then
		IFS=',' read -r -a input_colors <<< "$COLORS"

		color_array=("BLACK" "RED" "GREEN" "YELLOW" "BLUE" "MAGENTA" "CYAN" "LIGHT_GRAY" "GRAY" "LIGHT_RED" "LIGHT_GREEN" "LIGHT_YELLOW" "LIGHT_BLUE" "LIGHT_MAGENTA" "LIGHT_CYAN" "WHITE")

		match=false	
		for COL in ${input_colors[@]}; do
			if matchingElement "$COL" "${color_array[@]}"; then
				match=true
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown ANSI color code names of the following: $COLORS"
			exit 1
		fi	
	fi

	if [ -n "$BG_COLORS" ]; then
		IFS=',' read -r -a input_bg_colors <<< "$BG_COLORS"

		bg_color_array=("BLACK_BG" "RED_BG" "GREEN_BG" "YELLOW_BG" "BLUE_BG" "MAGENTA_BG" "CYAN_BG" "WHITE_BG")

		match=false	
		for COL in ${input_bg_colors[@]}; do
			if matchingElement "$COL" "${bg_color_array[@]}"; then
				match=true
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown ANSI background color code names of the following: $BG_COLORS"
			exit 1
		fi	
	fi

	if [ -n "$BOLD_COLORS" ]; then
		IFS=',' read -r -a input_bold_colors <<< "$BOLD_COLORS"

		bold_color_array=("BOLD_BLACK" "BOLD_RED" "BOLD_GREEN" "BOLD_YELLOW" "BOLD_BLUE" "BOLD_MAGENTA" "BOLD_CYAN" "BOLD_LIGHT_GRAY" "BOLD_GRAY" "BOLD_LIGHT_RED" "BOLD_LIGHT_GREEN" "BOLD_LIGHT_YELLOW" "BOLD_LIGHT_BLUE" "BOLD_LIGHT_MAGENTA" "BOLD_LIGHT_CYAN" "BOLD_WHTIE")

		match=false	
		for COL in ${input_bold_colors[@]}; do
			if matchingElement "$COL" "${bold_color_array[@]}"; then
				match=true
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown ANSI bold color code names of the following: $BOLD_COLORS"
			exit 1
		fi	
	fi

	if [ -n "$ITALIC_COLORS" ]; then
		IFS=',' read -r -a input_italic_colors <<< "$ITALIC_COLORS"

		italic_color_array=("ITALIC_BLACK" "ITALIC_RED" "ITALIC_GREEN" "ITALIC_YELLOW" "ITALIC_BLUE" "ITALIC_MAGENTA" "ITALIC_CYAN" "ITALIC_LIGHT_GRAY" "ITALIC_GRAY" "ITALIC_LIGHT_RED" "ITALIC_LIGHT_GREEN" "ITALIC_LIGHT_YELLOW" "ITALIC_LIGHT_BLUE" "ITALIC_LIGHT_MAGENTA" "ITALIC_LIGHT_CYAN" "ITALIC_WHITE")

		match=false	
		for COL in ${input_italic_colors[@]}; do
			if matchingElement "$COL" "${italic_color_array[@]}"; then
				match=true
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown ANSI italic color code names of the following: $ITALIC_COLORS"
			exit 1
		fi	
	fi

	if [ -n "$FONT_STYLES" ]; then
		IFS=',' read -r -a input_font_styles <<< "$FONT_STYLES"
	
		font_styles_array=("BOLD" "ITALIC")

		match=false	
		for COL in ${input_font_styles[@]}; do
			if matchingElement "$COL" "${font_styles_array[@]}"; then
				match=true
			fi
		done
		
		if [[ "$match" == "false" ]]; then
			error "Unknown ANSI font style code names of the following: $FONT_STYLES"
			exit 1
		fi	
	fi

	# Message Types
	if [ -n "$LOG_MESSAGE_TYPES" ]; then
		# Check color and bold to express message arrays
		message_array=("Info" "Success" "Warning" "Error")
		match=false	
		for MS in ${message_array[@]}; do
			if [[ "$LOG_MESSAGE_TYPES" == *"$MS"* ]]; then
				match=true
				break
			fi
		done
		if [[ "$match" == "false" ]]; then
			error "Unknown message types for the following: $LOG_MESSAGE_TYPES"
			exit 1
		fi	
		info "Message Types: $LOG_MESSAGE_TYPES"
	fi
}

#================================================================
# GUI Bash Script Shell menu
#================================================================
#================================================================
# FUNCTION: gui
# DESCRIPTION:
#     Displays Graphical User Interface mode in Bash.
# GLOBALS:
#     SCRIPT_NAME - Specifies script file name
#     SCRIPT_TITLE - Specifies official title of the script
#     AUTHOR - Specifies name of the author
#     DESCRIPTION - Specifies description
#     NOTES - Specifies notes
#     DEPENDENCIES - Specifies required dependencies
#     LICENSE - Specifies license type
#     COLORS - Specifies standard ANSI color code escape sequences
#     BG_COLORS - Specifies background ANSI color code escape sequences
#     BOLD_COLORS - Specifies bold ANSI color code escape sequences
#     ITALIC_COLORS - Specifies italic ANSI color code escape sequences
#     FONT_STYLES - Specifies ANSI font style color code escape sequences
#     LOG_MESSAGE_TYPES - Specifies type of messages
#     COMMAND_LINE_INTERFACE - Implements Command-Line interface (USAGE, HELP & parsing argument menu)
# PARAMETERS:
#     None
# RETURNS:
#     None
#================================================================
gui() {
	info "Enabled GUI mode"

	SCRIPT_NAME="" 
	SCRIPT_TITLE=""
	AUTHOR="" 
	DESCRIPTION="" 
	NOTES="" 
	DEPENDENCIES="" 
	LICENSE="" 
	COLORS="" 
	BG_COLORS=""
	BOLD_COLORS="" 
	ITALIC_COLORS="" 
	FONT_STYLES=""
	LOG_MESSAGE_TYPES="" 
	COMMAND_LINE_INTERFACE=false 

	# Check if whiptail is installed on user's system.
	check_whiptail=$(dpkg -l | grep whiptail)
	if ! "$check_whiptail" | grep -q "whiptail"; then
		info "Whiptail has been detected to be installed on your system"
	else 
		bold_error "Your system does not have Whiptail installed."
		exit 1
	fi	

	# Script name
	while true; do
		SCRIPT_NAME=$(whiptail --inputbox "Please enter the file name of the script" 8 75 --title "[!] Set up file name" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			echo "Operation cancelled by the user."
		elif [ -z "$SCRIPT_NAME" ]; then
			whiptail --title "[!!] Warning" --msgbox "You must provide a name for your script." 8 78
		else
			break
		fi	
	done
	info "File Name: $SCRIPT_NAME"			

	# Script Title
	SCRIPT_TITLE=$(whiptail --inputbox "Please enter the title of the script" 8 75 --title "[!] Set up script title" 3>&1 1>&2 2>&3)
	EXIT_STATUS=$?
	if [ $EXIT_STATUS -ne 0 ]; then
		info "Operation cancelled by the user."
	fi	
	info "Title: $SCRIPT_TITLE"

	# Author
	AUTHOR=$(whiptail --inputbox "Please enter the name of the author of the script" 8 75 --title "[!] Set up author name" 3>&1 1>&2 2>&3)
	EXIT_STATUS=$?
	if [ $EXIT_STATUS -ne 0 ]; then
		info "Operation cancelled by the user."
	fi	
	info "Author: $AUTHOR"			

	# Description
	DESCRIPTION=$(whiptail --inputbox "Please enter the description about your script. \n\nThe description is useful for the user to know what the script is and the purpose behind the development of the project. This is to inform the user the script they are executing that would affect their system." 11 160 --title "[!] Set up description" 3>&1 1>&2 2>&3)
	EXIT_STATUS=$?
	if [ $EXIT_STATUS -ne 0 ]; then
		info "Operation cancelled by the user."
	fi
	info "Description: $DESCRIPTION"

	# Notes
	NOTES=$(whiptail --inputbox "Please enter notes about your script. \n\nNotes informs the user of any additional information that would be useful for understanding the script. This is to provide clarity and guidance on how to use the script." 11 160 --title "[!] Set up notes" 3>&1 1>&2 2>&3)
	EXIT_STATUS=$?
	if [ $EXIT_STATUS -ne 0 ]; then
		info "Operation cancelled by the user."
	fi
	info "Notes: $NOTES"

	# Dependencies
	DEPENDENCIES=$(whiptail --inputbox "Please enter the required dependencies. \n\nDependencies are essential for listing software, libraries or scripts to run the script properly." 11 160 --title "[!] Set up dependencies requirements" 3>&1 1>&2 2>&3)
	EXIT_STATUS=$?
	if [ $EXIT_STATUS -ne 0 ]; then
		info "Operation cancelled by the user."
	fi
	info "Dependencies: $DEPENDENCIES"

	# License
	while true; do
		OPTIONS=(
			"Apache-2.0" "Apache License 2.0" 
			"GPL-3.0" "GNU General Public License v3.0"
			"MIT" "MIT License"
			"BSD-2-Clause" "BSD 2-clause 'Simplfied' license"
			"BSD-3-Clause" "BSD 3-clause 'New' or 'Revised' license" 
			"BSL-1.0" "Boost Software License 1.0"
			"CC0-1.0" "Creative Commons Zero v1.0 Universal"
			"EPL-2.0" "Eclipse Public License 2.0" 
			"AGPL-3.0" "GNU Affero General Public License v3.0"
			"LGPL-2.1" "GNU Lesser General Public License v2.1"
			"MPL-2.0" "Mozilla Public License 2.0"
			"Unlicense" "The Unlicense"
		)
		LICENSE=$(whiptail --title "[!!] License selection" --menu "Please choose your preferred licensing type. \n\nLicensing is essential for defining how the code can be used, modified, and distributed by others. It is critical as it governs hwo the code can be utilized to ensure that both the developers and users of the software understand their rights and responsibilities." 45 80 16 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			echo "Operation cancelled by the user."
			whiptail --title "[!!] Warning" --msgbox "Invalid License type. The license type must be selected." 8 78
		else
			break
		fi
	done
	info "License Type: $LICENSE"

	# ALL - Adds all functions (ANSI escape sequences, message functions & Command Line Interface)
	if whiptail --title "[!] Implement all" --yesno "Do you want to add all custom functionalities to your script? The list are as follows: \n
		* All standard ANSI color code escape sequences
		* All background ANSI color code escape sequences
		* All ANSI font style escape sequences (Bold & Italic)
		* All custom log level messages (INFO, SUCCESS, WARNING & ERROR) 
		* Complete custom Command-Line argument parsing Interface (USAGE, HELP and CLI) \n\n
		If you select NO, you will have to individually select your own preference for how you want your script to be formatted." 30 100; then

		# Implements all functionality into the following method
		all 

		info "Enabling implementation of all custom functionalities to $SCRIPT_NAME.sh"
	else
		info "Disabling implementation of all custom functionalities to $SCRIPT_NAME.sh"
	fi

	# COLOR
	local STANDARD_ANSI_COLOR=false
	if [ -z "$COLOR" ]; then
		if whiptail --title "[!] Implement standard ANSI color code escape sequences" --yesno "Do you want to add standard ANSI color code escape sequences to your script? (ANSI Color Code Escape Sequences is required for custom log level messages)" 8 85; then
			STANDARD_ANSI_COLOR=true
			info "Enabled implementation of standard ANSI color code escape sequences"
		else
			info "Disabled implementation of standard ANSI color code escape sequences"
		fi
	fi

	if [[ "$STANDARD_ANSI_COLOR" == "true"  ]]; then
		OPTIONS=(
			"BLACK" "" ON \
			"GREEN" "" OFF \
			"YELLOW" "" OFF \
			"BLUE" "" OFF \
			"MAGENTA" "" OFF \
			"CYAN" "" OFF \
			"LIGHT_GRAY" "" OFF \
			"GRAY" "" OFF \
			"LIGHT_RED" "" OFF \
			"LIGHT_GREEN" "" OFF \
			"LIGHT_YELLOW" "" OFF \
			"LIGHT_BLUE" "" OFF \
			"LIGHT_MAGENTA" "" OFF \
			"LIGHT_CYAN" "" OFF \
			"LIGHT_WHITE" "" OFF 
		)
		COLORS=$(whiptail --title "[!] Select ANSI color code escape sequences" --checklist "Select ANSI color code escape sequences you want to implement to your script" 20 78 12 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			info "Operation cancelled by the user."
		else
			COLORS=$(echo "$COLORS" | tr -d '"' | tr ' ' ',')
		fi
		info "Colors: $COLORS"
	fi

	# BG COLOR Mode
	local BACKGROUND_ANSI_COLOR=false
	if [ -z "$BG_COLOR" ]; then
		if whiptail --title "[!] Implement background ANSI color code escape sequences" --yesno "Do you want to add background ANSI color code escape sequences?" 8 78; then
			BACKGROUND_ANSI_COLOR=true	
			info "Enabled implementation of background ANSI color code escape sequences"
		else
			info "Disabled implementation of background ANSI color code escape sequences"
		fi
	fi

	if [[ "$BACKGROUND_ANSI_COLOR" == "true" ]]; then
		OPTIONS=(
			"BLACK_BG" "" ON \
			"RED_BG" "" OFF \
			"GREEN_BG" "" OFF \
			"YELLOW_BG" "" OFF \
			"BLUE_BG" "" OFF \
			"MAGENTA_BG" "" OFF \
			"CYAN_BG" "" OFF \
			"WHITE_BG" "" OFF 
		)
		BG_COLORS=$(whiptail --title "[!] Select background ANSI color code escape sequences" --checklist "Select background ANSI color code escape sequences" 20 78 12 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			info "Operation cancelled by the user."
		else
			BG_COLORS=$(echo "$BG_COLORS" | tr -d '"' | tr ' ' ',')
		fi
		info "Background Colors: $BG_COLORS"
	fi

	# Font Styles
	local ANSI_FONT_STYLES=false
	if [ -z "$FONT_STYLES" ]; then
		if whiptail --title "[!] Implement ANSI font style escape sequences" --yesno "Do you want to add ANSI font styles escape sequences?" 8 78; then
			ANSI_FONT_STYLES=true
			info "Enabled implementation of ANSI font style escape sequences"
		else
			info "Disabled implementation of ANSI font style escape sequences"
		fi
	fi

	if [[ "$ANSI_FONT_STYLES" == "true" ]]; then
		OPTIONS=(
			"BOLD" "" ON \
			"ITALIC" "" OFF
		)
		FONT_STYLES=$(whiptail --title "[!] Select ANSI font styles escape sequences" --checklist "Select ANSI font style escape sequences" 20 78 4 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			info "Operation cancelled by the user."
		else
			FONT_STYLES=$(echo "$FONT_STYLES" | tr -d '"' | tr ' ' ',')
		fi
		info "Font Styles: $FONT_STYLES"
	fi

	# Message
	local MESSAGE=false
	if [ -z "$LOG_MESSAGE_TYPES" ]; then
		if whiptail --title "[!] Implement custom log level messages" --yesno "Do you want to add custom log level messages to your script?" 8 78; then
			MESSAGE=true
			info "Enabled implementation of custom log level messages"
		else
			info "Disabled implementation of custom log level messages"
		fi
	fi

	if [[ "$MESSAGE" == "true" ]]; then
		OPTIONS=(
			"Info" "Provides normal insight during operation of the state of the application" ON \
			"Success" "Operation or process has completed successfully" OFF \
			"Warning" "Indicating a potential issue or unexpected problem while running" OFF \
			"Error" "Indicating serious problem that causes the script to fail" OFF
		)
		LOG_MESSAGE_TYPES=$(whiptail --title "[!] Select log types" --checklist "Select the log level message types" 20 100 12 "${OPTIONS[@]}" 3>&1 1>&2 2>&3)
		EXIT_STATUS=$?
		if [ $EXIT_STATUS -ne 0 ]; then
			info "Operation cancelled by the user."
		else 
			LOG_MESSAGE_TYPES=$(echo "$LOG_MESSAGE_TYPES" | tr -d '"' | tr ' ' ',')
		fi
		info "Message Types: $LOG_MESSAGE_TYPES"
	fi

	# Command Line Interface	
	if [[ "$COMMAND_LINE_INTERFACE" == "false" ]]; then
		if whiptail --title "[!] Implement command line argument interface" --yesno "Do you want to add command line argument interface to your script?" 20 100; then
			COMAMND_LINE_INTERFACE=true
			info "Enabled implementation of command-line interface"
		else
			info "Disabled implementation of command-line interface"
		fi
	fi

	generate_script

	if [[ -e "$(pwd)/$SCRIPT_NAME.sh" ]]; then
		whiptail --title "[!] Script Generated" --msgbox "The following script $SCRIPT_NAME.sh is generated in your system." 8 78
		notify-send -u normal "Script Generated" "The following script <b>$SCRIPT_NAME.sh</b> has been successfully generated on your system."
		success "Completed GUI mode in Bash"
	else 
		whiptail --title "[!!!] Fatal Error" --msgbox "Failed to generate script. Check in your system what caused the issue of failing to generating a script." 8 78
		exit 1
	fi

	exit 0
}

# Command-Line Argument Parsing Interface
while [[ "$#" -gt 0 ]]; do
	case $1 in
		--usage) usage ;;
		-h|--help) help ;;
		-n|--name) SCRIPT_NAME="$2"; shift ;;
		-t|--title) SCRIPT_TITLE="$2"; shift ;;
		-a|--author) AUTHOR="$2"; shift ;;
		-d|--description) DESCRIPTION="$2"; shift ;;
		-ns|--notes) NOTES="$2"; shift ;;
		-dp|--dependencies) DEPENDENCIES="$2"; shift ;;	
		-l|--license) LICENSE="$2"; shift ;;
		--licenses) display_licenses ;;
		--all) all ;;
		-afs|--all-font-styles) all_font_styles ;;
		-c|--colors) COLORS="$2"; shift ;;
		--show-colors) display_colors ;;
		-ac|--all-colors) 
			COLORS="BLACK,GREEN,YELLOW,BLUE,MAGENTA,CYAN,LIGHT_GRAY,GRAY,LIGHT_RED,LIGHT_GREEN,LIGHT_YELLOW,LIGHT_BLUE,LIGHT_MAGENTA,LIGHT_CYAN,LIGHT_WHITE" 
			;;
		-bc|--background-colors) BG_COLORS="$2"; shift ;;
		-abgc|--all-background-colors) 
			BG_COLORS="BLACK_BG,RED_BG,GREEN_BG,YELLOW_BG,BLUE_BG,MAGENTA_BG,CYAN_BG,WHITE_BG" 
			;;
		-ic|--italic-colors) ITALIC_COLORS="$2"; shift ;;
		-ais|--all-italic-colors) 
			ITALIC_COLORS="ITALIC_BLACK,ITALIC_RED,ITALIC_GREEN,ITALIC_YELLOW,ITALIC_BLUE,ITALIC_MAGENTA,ITALIC_CYAN,ITALIC_LIGHT_GRAY,ITALIC_GRAY,ITALIC_LIGHT_RED,ITALIC_LIGHT_GREEN,ITALIC_LIGHT_YELLOW,ITALIC_LIGHT_BLUE,ITALIC_LIGHT_MAGENTA,ITALIC_LIGHT_CYAN,ITALIC_WHITE" 
			;;
		-bc|--bold-colors) BOLD_COLORS="$2"; shift ;;
		-abc|--all-bold-colors) 
			BOLD_COLORS="BOLD_BLACK,BOLD_RED,BOLD_GREEN,BOLD_YELLOW,BOLD_BLUE,BOLD_MAGENTA,BOLD_CYAN,BOLD_LIGHT_GRAY,BOLD_GRAY,BOLD_LIGHT_RED,BOLD_LIGHT_GREEN,BOLD_LIGHT_YELLOW,BOLD_LIGHT_BLUE,BOLD_LIGHT_MAGENTA,BOLD_LIGHT_CYAN,BOLD_WHITE" 
			;;
		-fs|--font-styles) FONT_STYLES="$2"; shift ;;
		--show-ansi) show_ansi ;;
		-mt|--message-types) LOG_MESSAGE_TYPES="$2"; shift ;;
		--show-messages) display_messages ;;
		-cli|--command-line-interface) COMMAND_LINE_INTERFACE=true ;;
		gui|--graphical-interface) gui ;;
		*) error "Unknown parameter passed: $1"; exit 1 ;;
	esac
	shift
done

input_check

info "Generating script"
generate_script
success "Completed generating script"

exit 0

