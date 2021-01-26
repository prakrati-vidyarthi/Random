export PATH=$HOME/.toolbox/bin:$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}${PWD##*/} ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

export PATH=${PATH}:/usr/local/mysql/bin

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

export PATH=$PATH:/Users/prakrati/Desktop/Setup/apache-maven-3.6.3/bin
