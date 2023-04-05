# TODO https://www.markhansen.co.nz/auto-start-tmux/
# check if the cmd is being called from within the screen
# https://serverfault.com/questions/434306/is-it-possible-in-a-script-to-tell-if-it-is-being-run-from-within-gnu-screen
test $TERM != "screen"; and exec tmux
set -U fish_prompt_pwd_dir_length 0
