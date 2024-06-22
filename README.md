# ShellSketch - Blueprint Shell Script Template Generator
![ShellSketch](https://github.com/eliaz5536/ShellSketch/assets/5835036/3c052d7c-4981-4159-8ca9-22b6bb8d0c85)

Bash script template for ease of development & implementation for script development.

## Demo
### Command-Line
[![asciicast](https://asciinema.org/a/aXSdISgOUVbFwhSM3Q3gcNeSe.svg)](https://asciinema.org/a/aXSdISgOUVbFwhSM3Q3gcNeSe)

### GUI 
#### Whiptail
[![asciicast](https://asciinema.org/a/T9InMdkBqD0PxWGbazoe8cA6B.svg)](https://asciinema.org/a/T9InMdkBqD0PxWGbazoe8cA6B)

#### YAD

<!-- <div align="center">
  <img src="https://github.com/eliaz5536/ShellSketch/assets/5835036/b4cfbeec-70e6-4823-9331-7f6d07ccc04b" alt="Description of the GIF">
</div> 
--> 

![Screenshot 2024-06-22 181316](https://github.com/eliaz5536/ShellSketch/assets/5835036/14749cd9-7112-4558-88b6-79efdfc439aa)


### License




### Color
![ezgif-2-2d7d63e99f](https://github.com/eliaz5536/ShellSketch/assets/5835036/21205f77-71ee-46d3-8c6b-c98fb7c4c4f4)


### Background Color


### Italic Color


### Font Styles


### Log Message Types


## Usage
```
Shell Script Template Generator
 
Usage: ./template [mode] [options]
```

## Help
```
Shell Script Template Generator
 
Usage: ./template.sh [modes] [options]
 
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

