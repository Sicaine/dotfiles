# The following lines were added by compinstall

alias weather="curl http://wttr.in/munich"

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/sicaine/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt clint

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
setopt autocd nonomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install



# copy and paste blob for proper keybindings
typeset -A key
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}
# setup keys
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char
# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
function zle-line-init () {
    echoti smkx
}
function zle-line-finish () {
    echoti rmkx
}
zle -N zle-line-init
zle -N zle-line-finish  



source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# ~/.bashrc

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

SSH_AUTH_SOCK=`ss -xl | grep -o '/run/user/1000/keyring/ssh'`
SSH_AUTH_SOCK='/run/user/1000/keyring/ssh'
[ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK

if [ -n "$DESKTOP_SESSION" ]; then
	eval $(gnome-keyring-daemon --start --components=ssh)
	export SSH_AUTH_SOCK
fi
eval $(dircolors -b $HOME/.dircolors)

PATH="`ruby -rubygems -e 'puts Gem.user_dir'`/bin:$PATH"

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export QT_GRAPHICSSYSTEM=native

export ANDROID_HOME=/opt/android-sdk

# freeze/unfreeze the terminal: restores terminal settings automaticly
ttyctl -f
