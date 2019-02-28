# unset default kubectl list so that there is no default context
export KUBECONFIG="~/.kube/emptyconfig"
alias kubectx='unset KUBECONFIG; /usr/local/bin/kubectx'
