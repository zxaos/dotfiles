# unset default kubectl list so that there is no default context
export KUBECONFIG="$HOME/.kube/emptyconfig"
alias kubectx='unset KUBECONFIG; /usr/local/bin/kubectx'
alias kuc='kubectl config unset current-context'
