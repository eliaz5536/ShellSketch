# ShellSketch - Blueprint Shell Script Template Generator
![ShellSketch](https://github.com/eliaz5536/ShellSketch/assets/5835036/3c052d7c-4981-4159-8ca9-22b6bb8d0c85)

# ShellSketch
**_ShellSketch_** is a versatile robust bash script template, with the aim of generating structred-formatted shell scripts 
as preference by user selection through automation without manually creating scripts from scratch. It is also a customizable tool that offers the control of how you want to format your shell scripts.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Demo](#demo)
- [Configuration](#configuration)
- [License](#license)

# Features
**_ShellSketch_** offers series of features designed to automate shell and bash scripting:

### **Documentation Support**
ShellSketch offers support for implementing documentation structure for headers and functions to provide readability and maintainability. It includes fields for a detailed description, notes and a list of required dependencies, ensuring comprehensive project documentation.

### **Licensing** 
ShellSketch offers a list of extensive license types from GitHub itself that allow you the selection of specifying the appropriate license for your project, listed under the following:

<table align="center">
 <tr>
  <th width="500px">License</th>
  <th width="500px">Description</th>
 </tr>
 <tr>
  <td>Apache-2.0</td>
  <td>Apache License 2.0</td>
 </tr>
 <tr>
  <td>GPL-3.0</td>
  <td>GNU General Public License v3.0</td>
 </tr>
 <tr>
  <td>MIT</td>
  <td>MIT License</td>
 </tr>
 <tr>
  <td>BSD-2-Clause</td>
  <td>BSD 2-clause 'simplified' license</td>
 </tr>
 <tr>
  <td>BSD-3-Clause</td>
  <td>BSD 3-clause 'New' or 'Revised' license</td>
 </tr>
 <tr>
  <td>BSL-1.0</td>
  <td>Boost Software License 1.0</td>
 </tr>
 <tr>
  <td>CC0-1.0</td>
  <td>Creative Commons Zero v1.0 Universal</td>
 </tr>
 <tr>
  <td>EPL-2.0</td>
  <td>Eclipse Public License 2.0</td>
 </tr>
 <tr>
  <td>AGPL-3.0</td>
  <td>GNU Affero General Public License v3.0</td>
 </tr>
 <tr>
  <td>LGPL-2.1</td>
  <td>GNU Lesser General Public License v2.1</td>
 </tr>
 <tr>
  <td>MPL-2.0</td>
  <td>Mozilla Public License 2.0</td>
 </tr>
 <tr>
  <td>Unlicense</td>
  <td>The Unlicense</td>
 </tr> 
</table>

### **Custom Visual Output**
**_ShellSketch_** supports **Custom ANSI Escape Sequences** to display colors in shell scripts during development, ideal for improving user experience through visual output. 

<div align="center">
  <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/3612bfc5-93db-4af8-a18c-a12b92f40d19" alt="ansi" />
</div>

Furthermore, it supports **Custom Log Level Messaging** which provide predefined log levels (**INFO**, **SUCCESS**, **WARNING**, **ERROR**) to clarify script output messages, which can be customized for better visual output.

<div align="center">
  <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/8ca86259-6180-402f-ab62-ee025bb1f46b" alt="log_messages_new" />
</div>

### **Customized Command-Line Interface**
**_ShellSketch_** supports the creation of customized CLI menu that allow for the creation of customized command-line interface menus to make your scripts interactive. This also involves generating USAGE and HELP functions to produce your scripts effectively.

<div align="center">
 <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/7329aa49-7c60-4241-9323-2cc11440aa5b" alt="terminal" />
</div>

<br>

<div align="center">
 <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/2221b658-5354-49b0-ae53-d073fb85adaa" alt="new" />
</div>

### **GUI Support**
**_ShellSketch_** supports GUI mode which uses **YAD (Yet Another Dialog)** that displays GTK+ dialog boxes and **Whiptail** for usability and accessability of inputting values through simple user interface, which Whiptail is included by default on _Debian_.

<p align="center">
 <strong>YAD (Yet Another Dialog)</strong>
<p align="center"/>
<div align="center">
 <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/7b7fa045-5b85-446d-bfb6-9d498f8c7c3e" alt="ezgif-7-899ea4d197" />
</div>

<br>

<p align="center">
 <strong>Whiptail</strong>
<p align="center"/>
<div align="center">
  <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/afb4f3b6-416a-4235-899f-b6072c1b51d1" alt="whiptail" />
</div>

# Requirements
It is highly recommended that you run this script on **Debian** or **Debian-based distribution machine** (_Ubuntu_, _Linux Mint_, _Zorin OS_ or _Kali Linux_)
to avoid compatibility and software issues since packages are installed from the default package manager of Debian **apt**.

Interacting with **_ShellSketch_** in GUI mode through requires the installation of YAD and Whiptail using apt package manager, which can be performed by executing the following commands:
```
sudo apt-get install whiptail
sudo apt-get install yad

# OR

sudo apt-get install whiptail yad
```

# Installation
```
# Clone the following repository
git clone https://github.com/eliaz5536/ShellSketch

# Change directory to repository folder and modify file permission to be executable
cd ShellSketch
chmod +x template.sh

# Execute the script
./template.sh -h
```

## Usage
```
ShellSketch - Blueprint Shell Script Template Generator
 
Usage: ./template.sh [mode] [options]
```

## Help
```
ShellSketch - Blueprint Shell Script Template Generator
 
Usage: ./template.sh [mode] [options]
 
Options:
  --usage                                               Show usage information
  -h, --help                                            Show help message
  -n, --name <FILE_NAME>                                Specify script file name
  -t, --title <SCRIPT_TITLE>                            Specify official title of the script
  -a, --author <AUTHOR>                                 Specify name of the author
  -d, --description <DESCRIPTION>                       Specify description
  -ns, --notes <NOTES>                                  Specify notes
  -dp, --dependencies <DEPENDENCIES>                    Specify required dependencies
  -l, --license <LICENSE_TYPE>                          Specify license type
 
ANSI Color Code Options:
  -c, --colors <STANDARD_COLORS>                        Specify standard ANSI color code escape sequences
  -ac, --all-colors                                     Implement all standard ANSI color code escape sequences
  -bgc, --bg-colors <BACKGROUND_COLORS>                 Specify background ANSI color code escape sequences
  -abgc, --all-bg-colors                                Implement all background ANSI color code escape sequences
  -ic, --italic-colors <ITALIC_COLORS>                  Specify italic ANSI color code escape sequences
  -aic, --all-italic-colors                             Implement all italic ANSI color code escape sequences
  -boc, --bold-colors <BOLD_COLORS>                     Specify bold ANSI color code escape sequences
  -aboc, --all-bold-colors                              Implement all bold ANSI color code escape sequences
 
Font Options:
  -fs, --font-styles <FONT_STYLES>                      Specify ANSI font style color code escape sequences
  -afs, --all-font-styles                               Implement all font styles (BOLD & ITALIC)
 
Message Options:
  -mt, --message-types <LOG_MESSAGE_TYPES>              Specify log message types
  --show-messages                                       Display a list of messages as functions to use in script
 
Command-Line Interface Option:
  -cli, --command-line-interface                        Implements Command-Line interface (USAGE, HELP & parsing argument menu)
 
Mode:
  gui                                                   Enters GUI mode (Whiptail) 
 
Help Options:
  --licenses                                            Show list of license types
  --show-ansi                                           Show list of available ANSI escape sequences
 
Other:
  --all                                                 Implement all features (all ANSI escape sequences, message functions and CLI)

```

# License
This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
