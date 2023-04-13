# TODO https://www.markhansen.co.nz/auto-start-tmux/
# check if the cmd is being called from within the screen
# https://serverfault.com/questions/434306/is-it-possible-in-a-script-to-tell-if-it-is-being-run-from-within-gnu-screen
test $TERM != "screen"; and exec tmux
set -U fish_prompt_pwd_dir_length 0
# https://sterlingcobb.medium.com/installing-rustup-on-macosx-and-fish-shell-a6102353ee18
# https://stackoverflow.com/questions/26208231/modifying-path-with-fish-shell
contains $HOME/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin
contains /usr/local/go/bin $fish_user_paths; or set -Ua fish_user_paths /usr/local/go/bin
contains /home/$USER/.local/bin $fish_user_paths; or set -Ua fish_user_paths /home/$USER/.local/bin
