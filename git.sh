DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f "${DIR}/cache/git.1" ]; then
  git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  git config --global alias.expire-branches '!git branch  --no-color | grep -v \* | grep -v master | xargs git branch -d'
  git config --global alias.expire-branches-force '!git branch  --no-color | grep -v \* | grep -v master | xargs git branch -D'

  git config --global user.name "Peter Donald"
  git config --global user.email peter@realityforge.org
  git config --global core.autocrlf false
  git config --global commit.gpgsign true
  git config --global gui.gcwarning false
  git config --global push.default simple
  
  git config --global core.excludesfile $DIR/git/gitignore_global
	
  mkdir -p ${DIR}/cache
  touch ${DIR}/cache/git.1
fi
	
