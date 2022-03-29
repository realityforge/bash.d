alias g="git"
alias b="bundle exec buildr"
alias buildr="bundle exec buildr"
alias rake="bundle exec rake"
alias rspec="bundle exe rspec"
alias braid="bundle exec braid"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
alias snd-restart="sudo kill -9 \$(ps ax|grep 'coreaudio[a-z]' | awk '{print \$1}')"
alias bzl-pretty="buildifier -lint fix \$(find . -type f \\( -iname BUILD -or -iname BUILD.bazel  -or -name \\*.bzl -or -iname WORKSPACE \\))"
alias bazel="bazelisk"
alias braidup="git add . && git stash && braid update && git stash pop && git reset"

alias geany="/Applications/Geany.app/Contents/MacOS/geany"

alias devdown="docker stop sqlserver; docker stop keycloak2 2> /dev/null; docker stop keycloak 2> /dev/null;  pg_ctl -D /usr/local/var/postgres stop  2> /dev/null"

alias devup_delwp="docker start sqlserver && docker start keycloak"

alias devup_arena="docker start sqlserver && docker start keycloak2 && pg_ctl -D /usr/local/var/postgres start"
