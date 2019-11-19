alias ans='ansible'
alias ap='ansible-playbook'
alias fm='furthermore'
alias kx='kubectx'
alias kxu="kubectl config unset current-context"
alias tf='terraform'

# Exa in long format with slash for dirs and * for executables
l() { exa "${1:--lF}"; }
