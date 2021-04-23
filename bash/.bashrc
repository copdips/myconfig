# ~/.bashrc

export no_proxy='keyword1, keyword2'
export LD_LIBRARY_PATH='/usr/local/lib'

unset HISTFILESIZE=10000
HISTFILE=~/.bash_history
HISTSIZE=10000
# HISTCONTROL=ignoreboth
HISTCONTROL=ignorespace
shopt -s histappend
PROMPT_COMMAND="history -a"
export HISTFILE
export HISTSIZE
export PROMPT_COMMAND

alias py=python
alias py3=python3
alias ipy=ipython
alias venv=". venv/bin/activate"
alias newvenv="python3 -m venv venv"
alias pipinstalldev="pip install -r ~/pip-dev-requirements.txt"

export PIP_REQUIRE_VIRTUALENV=true

# https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-autocomplete
source <(kubectl completion bash)
alias k="kubectl"
complete -F __start_kubectl k

# https://github.com/magicmonty/bash-git-prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
