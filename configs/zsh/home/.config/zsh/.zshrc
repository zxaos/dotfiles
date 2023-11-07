# Load individual settings from dotfiles directly
for file in ~/.dotfiles/configs/zsh/autoload-settings/**/*(.)zsh; do
  if [[ $ZDOTDEBUG ]] then
    echo "sourcing $file"
  fi
  source "$file"
done
