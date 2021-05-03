# unset default kubectl list so that there is no default context
if type "kubectx" > /dev/null; then
  kubectx -u > /dev/null 2>&1
fi
