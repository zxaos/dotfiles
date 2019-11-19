zplug 'zplug/zplug', hook-build:'zplug --self-manage'
#zplug 'nojhan/liquidprompt', use:liquidprompt, from:github, as:theme
#zplug 'denysdovhan/spaceship-prompt', use:spaceship.zsh, from:github, as:theme
zplug romkatv/powerlevel10k, use:powerlevel10k.zsh-theme

if (( $+commands[fzf] )); then
  zplug 'wfxr/forgit'
fi
