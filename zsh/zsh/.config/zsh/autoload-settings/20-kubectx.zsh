# unset default kubectl list so that there is no default context
if type "kubectx" > /dev/null; then
  kubectx -u > /dev/null
fi
