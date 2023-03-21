alias ans='ansible'
alias ap='ansible-playbook'
alias fm='furthermore'
alias kx='kubectx'
alias kxu="kubectl config unset current-context"
alias tf='terraform'
alias tower='open $(git rev-parse --show-toplevel) -a Tower'

if (( $+commands[bat] )); then
  bat_light='Monokai Extended Light'
  bat_dark=

  if (( $+commands[defaults] )); then
    # bat uses default theme when the OS is dark, and light theme when it's light
    alias cat="bat --theme=\"\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo '$bat_dark' || echo '$bat_light')\""
    alias bat="bat --theme=\"\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo '$bat_dark' || echo '$bat_light')\""
  elif (( $+functions[term_bg_dark] )); then
    # Not on macos? See if we've defined a function to get terminal luma and approximate it that way instead.
    alias cat="bat --theme=\"\$( term_bg_dark && echo '$bat_dark' || echo '$bat_light')\""
    alias bat="bat --theme=\"\$( term_bg_dark && echo '$bat_dark' || echo '$bat_light')\""
  fi
fi

if [ -d "/Applications/Tailscale.app/" ]; then
  alias tailscale='tailscale=/Applications/Tailscale.app/Contents/MacOS/Tailscale'
fi

# Exa in long format with slash for dirs and * for executables
l() { exa "${1:--lF}"; }

