#!/bin/bash

function __git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

function __git_branch {
  __git_ps1 " %s"
}

function _cmd_status {
	echo "✔"
}

function __rbenv_ruby_version {
  local version=$(rbenv version-name 2>&1)
  version=$(echo $version | sed 's/rbenv.*\`//g'  | sed "s/'.*//g")
  version=$(echo $version | sed 's/jruby-//g')
  [ "$version" != "" ] && echo "$version "
}

function __java_version {
  local j_version=$(java -version 2>&1)
  j_version=$(echo $j_version | sed 's/java version "//g' | sed 's/\.[0-9a-zA-Z_]*".*//g')
  [ "$j_version" != "" ] && echo "$j_version "
}

function __nodenv_node_version {
  local version=$(nodenv version-name 2>&1)
  version=$(echo $version | sed 's/nodenv.*\`//g'  | sed "s/'.*//g")
  version=$(echo $version | sed 's/jruby-//g')
  [ "$version" != "" ] && echo "$version "
}

function __command_status {
  local status="${EMG}✔$?"
  [ "$?" != "0" ] && status="${EMR}❌"
  echo $status
}

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local EMK="\[\033[1;30m\]"
  local EMR="\[\033[1;31m\]"
  local EMG="\[\033[1;32m\]"
  local EMY="\[\033[1;33m\]"
  local EMB="\[\033[1;34m\]"
  local EMM="\[\033[1;35m\]"
  local EMC="\[\033[1;36m\]"
  local EMW="\[\033[1;37m\]"

  # background colors
  local BGK="\[\033[40m\]"
  local BGR="\[\033[41m\]"
  local BGG="\[\033[42m\]"
  local BGY="\[\033[43m\]"
  local BGB="\[\033[44m\]"
  local BGM="\[\033[45m\]"
  local BGC="\[\033[46m\]"
  local BGW="\[\033[47m\]"

  #local HEXAGON="⬡"
  #local BLACK_HEXAGON="⬢"
  #local GEM="💎"
  #local GEM="⬦"
  #local GEM="⬩"
  PS1="${R}R $EMR\$(__rbenv_ruby_version)${G}N $EMG\$(__nodenv_node_version)${EMW}J \$(__java_version):$EMY\w$EMW\$(__git_branch)$EMY\$(__git_dirty)${NONE} $ "
}

bash_prompt
unset bash_prompt
