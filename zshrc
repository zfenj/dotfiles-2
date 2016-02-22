## PATHS
# Enter any necessary PATH alteration here

export TERM="xterm-256color"
alias ssh2q='ssh -F ~/prj/remote-dba/ssh_config'
alias scp2q='scp -F ~/prj/remote-dba/ssh_config'
alias pipup="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pipold="pip list --outdated"
alias conkeror='firefox --app ~/git/conkeror/application.ini'
alias ssh2q='ssh -F ~/prj/remote-dba/ssh_config'
alias ls='ls --group-directories-first --color=always'
alias xg='xinit gnome'
alias xs='xinit stumpwm'

# rbenv PATH config
#export RBENV_ROOT="${HOME}/.rbenv"
#if [ -d "${RBENV_ROOT}" ]; then
#  export PATH="${RBENV_ROOT}/bin:${PATH}"
#  eval "$(rbenv init -)"
#fi

## Antigen - plugin manager
source ~/git/antigen/antigen.zsh

## Load the oh-my-zsh's library.
antigen use oh-my-zsh

## Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOBUNDLES

        #archlinux
        #systemd
        emacs
        git
        github
        gitignore
        pip
        #lein
        command-not-found
        screen
        zsh-users/zsh-syntax-highlighting

EOBUNDLES

## Load the theme
## All the POWERLEVEL variables have to be set before applying the theme
#POWERLEVEL9K_MODE='compatible'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# Limit dir segmente (listed above) to show only the last two folders
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# Output time, date, and a symbol from the "Awesome Powerline Font" set
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

# The context segment (listed above) shows user@host on the shell.
# The line below sets it to only display when is not the Default user.
export DEFAULT_USER=rubens

## Apply the theme
antigen theme bhilburn/powerlevel9k powerlevel9k

## Tell antigen that you're done.
antigen apply

# Keychain
#eval `keychain --eval id_rsa`
