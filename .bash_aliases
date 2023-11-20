# ~/.bash_aliases

# Detect which `ls` binary is in use and set flags
if ls --color > /dev/null 2>&1; then
	colorflag="--color"  # It's GNU ls
else
	colorflag="-G"  # It's OSX ls
fi

alias ls="ls --group-directories-first -vhF ${colorflag}"  # Display dirs first, -v: Version sorting (dotfiles first)
alias ll='ls -alF'  # -a: Don't ignore '.'files, -l: Long listing, -F: add classification indicator
alias la='ls -A'  # -A: like -a but ignores implied '..' and '.'
alias l='ls -CF'  # -C: list by columns

alias tmux='TERM=screen-256color-bce tmux'

alias grep='grep --color=auto'
alias codegrep='grep -R --exclude-dir=".git" --exclude="*.log"'  # grep for code, not logs or metadata

# Manage dotfiles with Git (see: https://github.com/mfisher87/dotfiles)
alias dotfiles="/usr/bin/git --git-dir=${HOME}/.dotfiles --work-tree=${HOME}"

alias sshp='ssh -o PreferredAuthentications=password,keyboard-interactive -o PubkeyAuthentication=no'

# Start up an NGINX Docker container serving the current directory
alias nginxcontainer='docker run --rm -p 80:80 -v ${PWD}:/var/lib/nginx/html:ro dceoy/nginx-autoindex'

# Pre-commit helper
alias pre-commit-now='pre-commit run --all-files'

# ¯\_(ツ)_/¯
alias shrug='echo "¯\_(ツ)_/¯"'
alias brown='play -n -n --combine merge synth brownnoise band -n 550 550 tremolo 50 1 vol -24dB reverb bass 10 treble -6'
