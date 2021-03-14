alias ans='ansible'
alias ap='ansible-playbook'
alias fm='furthermore'
alias kx='kubectx'
alias kxu="kubectl config unset current-context"
alias tf='terraform'
alias tower='open $(git rev-parse --show-toplevel) -a Tower'

if type "bat" > /dev/null; then
  # bat uses default theme when the OS is dark, and light theme when it's light
  alias cat="bat --theme=\"\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo '' || echo 'Monokai Extended Light')\""
fi

# Exa in long format with slash for dirs and * for executables
l() { exa "${1:--lF}"; }

