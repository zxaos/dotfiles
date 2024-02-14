# delete globs in commands that don't resolve to anything
# if no globs resolve to anything, abort the command.
setopt +o cshnullglob
