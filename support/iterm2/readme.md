# iterm2 Setup Notes

## Italics
To test if italics work, run `echo -e "\e[3m foo \e[23m"`

## Colours
To test if colours work properly, run ./24-bit-color.sh and look for banding

## Shell integration
ZSH will pick this up if it thinks the terminal is running iterm2. Updated versions of the the integration script should be installed to configs/zsh/config-zsh/iterm2_shell_integration.zsh note no leading dot, which is the default for the iterm2 instaleer script.

Updated iterm2 utilities should be installed to configs/zsh/config-zsh/.iterm2 where they will be aliased automatically be the previous script.

## Light/Dark
Enable python scripts in the scripts menu, then symlink configs/iterm2/scripts/light-dark.py into configs/iterm2/AppSupport/Scripts/AutoLaunch
If you're not using material-light and material, you will need to update the script to use the right theme names
