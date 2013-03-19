if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
		. /etc/bash_completion
fi

alias ls="ls -G"
alias l="ls"
alias la="ls -aG"
alias ll="ls -alG"
alias less="less -M -x2"
alias jad="jad -s java"
alias ..="cd .."
alias cdwaslog="cd /cygdrive/c/Program\ Files/IBM/SDP70/runtimes/gbase_v61/profiles/AppSrv01/logs/server1/"
alias cdwpslog="cd /cygdrive/c/ibm/WebSphere/wp_profile/logs/WebSphere_Portal"
alias j="jobs"
alias gdb="gdb -q"

# mac 
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
alias view="/Applications/MacVim.app/Contents/MacOS/Vim -R"
alias mplayer="/Applications/MPlayer\ OSX\ Extended.app/Contents/Resources/Binaries/mpextended.mpBinaries/Contents/MacOS/mplayer"
alias python="/usr/local/bin/python"
export set JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8" 

export LDFLAGS='-L/opt/local/lib'
export CPPFLAGS='-I/opt/local/include'
export LD_LIBRARY_PATH=/opt/local/lib
export LD_INCLUDE_PATH=/opt/local/include

# erlang
alias erl14a=". /Users/carlo/.kerl/install/r14a/activate"
alias erl14b03=". /Users/carlo/.kerl/install/r14b03/activate"
alias erl14b04=". /Users/carlo/.kerl/install/r14b04/activate"
alias erl15b=". /Users/carlo/.kerl/install/r15b/activate"

# ruby MacOS
[[ -s "/Users/carlo/.rvm/scripts/rvm" ]] && source "/Users/carlo/.rvm/scripts/rvm"

# comandi da non salvare nella history
export HISTIGNORE="&:ls:pwd:[bf]g:exit:j:fg [0-9]*"

# file da ignorare facendo tab completion
export FIGNORE=$FIGNORE:svn:DS_Store

#export PYTHONPATH="/cygdrive/d/python"
# python site-packages mac os 
# /Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/
PYTHONPATH=/Library/Frameworks/Python.framework/Versions/2.7/bin/

shopt -s cdspell

set -o vi

export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u\[\e[m\]@\[\e[0;31m\]\h\[\e[m\]\[\e[33m\]:\w\[\e[0m\]\n\$ "
export LSCOLORS="exgxcxdxcxegedabagacad"

export PATH=/usr/local/git/bin:/opt/subversion/bin:$PATH:/sw/bin:/usr/local/mysql/bin:/usr/share/maven/bin:/opt/local/bin:~/bin:$PYTHONPATH
launchctl setenv PATH $PATH

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
# /System/Library/Frameworks/JavaVM.framework/Home/ 1.6
export JAVA_HOME=`/usr/libexec/java_home`
export MW_HOME=/Users/carlo/weblogic_server
export ANT_HOME=/usr/share/ant
export MAVEN_HOME=/usr/share/maven
export JONAS_ROOT=/opt/JONAS_4_10_9
export JBOSS_HOME=/Users/carlo/jboss-5.1.0.GA
#export PATH=/opt/subversion/bin:/usr/sbin:$JONAS_ROOT/bin/unix:$PATH

#export DYLD_LIBRARY_PATH="/opt/subversion/lib:/usr/lib:$DYLD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="/opt/subversion/lib:$DYLD_LIBRARY_PATH"

# extssh su linux, ext su MacOS
export CVSROOT=":ext:cbertold@192.168.0.21:/CVS_JAVA_LAB"
export CVS_RSH=ssh
export TMP=/tmp/

export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
export SVN_EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"

#export TERM=xterm-256color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
elif [[ $(toe | grep -m 1 xterm-256) ]]
then
	export TERM='screen-256color'
else
	export TERM='xterm-color'
fi

export TERM=screen-256color-bce

growl() { echo -e $'\e]9;'${1}'\007' ; return ; }

growl "Scemo chi legge"

# old linux stuff
# compiz --replace &
# gtk-window-decorator --replace

#xmodmap ~/.xmodmaprc
