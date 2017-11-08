# Gruvbox Schemes
https://github.com/morhetz/gruvbox-contrib/tree/master/iterm2
using commit bb665ee from Dec 22, 2016

# Italics
* run tic xterm-256color-italic.terminfo
* ensure iterm uses this new $TERM (profiles -> terminal)
* test
  * bash: echo `tput sitm`italics`tput ritm`
  * fish: echo (tputsitm)italics(tput ritm)
* Yes, it has to be xterm-256color-something and can't be iterm-256color-something or else vim won't display colors properly. Even if termguicolor and t_Co are set properly.

# tmux
* Either install ncurses and copy the relevant terminfo database over
* or run tic tmux.terminfo ; tic tmux-256color.terminfo

# vim
* Vim only sets the 24-bit color mode escape sequences when $TERM is like 'xterm'. So note that if you're using the tmux TERM, you'll need to manually set them too.
* See vim/general for this.

# Notes
terminfo database is old/incomplete which is most of the problem here.
So xterm-256color-italics fixes the problem for iterm2 by adding the italic escape sequences
tmux and tmux-256color set tmux to use modern term caps and italics, but they don't detect the underlying terminal supporting 24-bit color - because we've made a new one to fix the italics.
So we have to set the overrides in tmux.conf, _specifying the underlying $TERM, before tmux starts_ that we want to adjust:
set-option -ga terminal-overrides ",xterm-256color-italic:Tc"
So that's override a parent terminal of "xterm-256color-italic" to support 24-bit color (from tmux's perspective)
Then finally, set an override inside vim to also enable 24-bit color mode when we're using one of our custom non-xterm TERMs.
