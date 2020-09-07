alias ans='ansible'
alias ap='ansible-playbook'
alias fm='furthermore'
alias kx='kubectx'
alias kxu="kubectl config unset current-context"
alias tf='terraform'

if type "bat" > /dev/null; then
  # bat uses dark mode when the OS does
  alias cat="bat --theme=\"\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo GitHub || echo 'Monokai Extended Light')\""
fi

# Exa in long format with slash for dirs and * for executables
l() { exa "${1:--lF}"; }

alias tower="open $(git rev-parse --show-toplevel) -a Tower"
