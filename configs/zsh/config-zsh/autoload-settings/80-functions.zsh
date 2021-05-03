if [[ $LC_TERMINAL == "iTerm2" ]]; then
  get_bg_luma() {
    # Redirect terminal out to stdin.
    exec </dev/tty
    # Capture old terminal settings
    local old=$(stty -g)
    # Set the terminal mode for a short time to raw.
    # This may need to be adjusted in some cases - the first argument to the
    # function will override the default wait time.
    stty raw -echo min 0  time ${10:-1}
    # Print the control code so the terminal outputs the value
    # This is ` OSC 4 ; -2; ? ST ` which is an iterm-specific escape code that
    # returns the background color in the format:
    # OSC 4 ; -2 ; rgb ; [red] / [green] / [blue] ST
    # See https://iterm2.com/documentation-escape-codes.html
    print "\033]4;-2;?\a\c" > /dev/tty
    # print "\033[21t\c" > /dev/tty is xterm to get title

    # Capture the terminal output
    IFS='' read -r raw_result
    # Reset the terminal to the original mode
    stty $old
    
    #remove the leading control code and response headers
    local triplet=${raw_result#???;-2;rgb:}
    #remove the trailing bell
    local triplet=${triplet%??}
    # split by slash
    local triplet=(${(@s:/:)triplet})
    # Convert the first two digits of each color from hex to decimal
    # For some reason the luma calculation wouldn't parse properly if these
    # were in an array.
    local r=$((0x${triplet[1]:0:2}))
    local g=$((0x${triplet[2]:0:2}))
    local b=$((0x${triplet[3]:0:2}))
    # Convert to luma and divide by 255 to get a 0(black) to 1(white) range
    print $(( ( ( 0.2126 * $r ) + ( 0.7152 * $g ) + ( 0.0722 * $b ) ) / 255 ))
  }

  term_bg_dark() {
    local luma=$( get_bg_luma )
    if [[ $luma < 0.5 ]]; then
      return 0
    else
      return 1
    fi
  }
fi
