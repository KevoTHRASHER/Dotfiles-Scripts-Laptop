# Fix the Java Problem
export _JAVA_AWT_WM_NONREPARENTING=1

# Created by newuser for 5.8
autoload -Uz compinit promptinit
compinit
promptinit
export VISUAL="nvim"
export EDITOR=$VISUAL

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

alias ls='ls --color=auto'
PS1="%F{green}┌──(%f%F{blue}%n@%M%f%F{green})-[%f%F{white}%~%f%F{green}]%f"$'\n'"%F{green}└─%f%F{blue}%#%f "
RPROMPT='%F{green}%T %W %f'
#PS1="%F{green}┌──(%f%F{blue}%n@%M%f%F{green})-[%F{white}%1~%f]%f"$'\n'"└─%F{blue}%#%f "
#PS1='[\u@\h \W]\$ '
neofetch
