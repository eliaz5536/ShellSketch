# ShellSketch - Blueprint Shell Script Template Generator
![ShellSketch](https://github.com/eliaz5536/ShellSketch/assets/5835036/3c052d7c-4981-4159-8ca9-22b6bb8d0c85)

# ShellSketch
ShellSketch is a complete customizable blueprint bash script template that provides the control
to generate formatted shell scripts as a template by automation.

This involves implementation of the following features:
- Strict HEADER & FUNCTION format 
- Description, notes and required dependencies of your project
- License type
- Selected ANSI Escape sequences (for custom shell scripts that require displaying color)
- Custom Log Level Messaging types (INFO, SUCCESS, WARNING & ERROR)
- Customized Command-Line Interface menu, with the addition of USAGE and HELP function.

ShellSketch can be interacted through both modes, CLI (terminal) and GUI (Graphical User Interface) using 
YAD (Yet Another Dialog) that displays GTK+ dialog boxes and Whiptail for usability and accessability of 
inputting values through simple user interface.

# Requirements
It is highly recommended that you run this script on **Debian** or **Debian-based distribution machine** (_Ubuntu_, _Linux Mint_, _Zorin OS_ & _Kali Linux_)
to avoid compatibility and software issues since packages are installed from the default package manager of Debian **apt**.

Interacting with ShellSketch through GUI through usability requires the installation of YAD and Whiptail using apt package manager,
which can be performed by executing the following commands:
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

# Access the repository and change file permission to be executable
cd ShellSketch
chmod +x template.sh

# Execute the script
./template.sh -h
```

## Usage
```
Shell Script Template Generator
 
Usage: ./template.sh [mode] [options]
```

## Help
```
Shell Script Template Generator
 
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

# Demo
## CLI Terminal
![terminal](https://github.com/eliaz5536/ShellSketch/assets/5835036/7329aa49-7c60-4241-9323-2cc11440aa5b)
![new](https://github.com/eliaz5536/ShellSketch/assets/5835036/2221b658-5354-49b0-ae53-d073fb85adaa)

## GUI 
### Whiptail
[![asciicast](https://asciinema.org/a/T9InMdkBqD0PxWGbazoe8cA6B.svg)](https://asciinema.org/a/T9InMdkBqD0PxWGbazoe8cA6B)

### YAD (Yet Another Dialog)
![ezgif-7-899ea4d197](https://github.com/eliaz5536/ShellSketch/assets/5835036/7b7fa045-5b85-446d-bfb6-9d498f8c7c3e)

#### Standard ANSI Color Selection
![ezgif-2-478cc29e43](https://github.com/eliaz5536/ShellSketch/assets/5835036/77782224-1448-4d89-bb18-581f2b124f92)

#### Background ANSI Color Selection
![ezgif-2-0edbce8211](https://github.com/eliaz5536/ShellSketch/assets/5835036/b3b21dd5-e2a3-454b-8352-1090a48b229d)

#### Italic ANSI Color Selection
![ezgif-2-c1f4ba98b6](https://github.com/eliaz5536/ShellSketch/assets/5835036/b53ccab8-6a7f-4477-ac88-e281861dd3d0)

#### Font Styles
![ezgif-5-d7b6329a4c](https://github.com/eliaz5536/ShellSketch/assets/5835036/93cce564-09f1-443f-a57f-bc0a699f3823)

#### Log Message Types
![ezgif-5-0016655ff0](https://github.com/eliaz5536/ShellSketch/assets/5835036/8ff01914-bc71-40f9-8371-5bb1d570cdaf)


