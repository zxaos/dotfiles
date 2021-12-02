zplug 'xPMo/zsh-ls-colors'

if (( $+commands[fzf] )); then
  zplug 'wfxr/forgit'
  # Load fzf-tab after compinit
  zplug 'Aloxaf/fzf-tab', \
    defer:2, \
    hook-load:"source ${0:a:h}/plugin-settings/fzf-tab.zsh"
fi
