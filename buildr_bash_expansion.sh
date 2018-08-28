# bash completion for buildr                       -*- shell-script -*-
# http://github.com/jcosmo/buildr-bash-completion
#
# Extension to original work found at:
# http://github.com/alikins/buildr-bash-completion
#

 [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

_update_buildr_cache()
{
  local buildfile_path
  buildfile_path="$PWD/buildfile"
  [[ ! -f "$buildfile_path" ]] && return 0

  if [[ "$cached_buildfile_path" != "$buildfile_path" || "$cached_buildr_targets" == "" ]]; then
    cached_buildfile_path=$buildfile_path
    cached_buildr_targets=$(buildr -s -T | awk '{ print $2 }' )
  fi
}

_buildr()
{
    local cur prev

    COMPREPLY=()
    _get_comp_words_by_ref -n : cur prev

    case $prev in
        -buildfile|-file|-f)
            _filedir
            return 0
            ;;
        --libdir|-I)
            _filedir -d
            return 0
            ;;
    esac

    if [[ $cur == -D* ]]; then
        return 0
    elif [[ "$cur" == -* ]]; then
        COMPREPLY=( $( compgen -W '$( _parse_help "$1" -h )' -- "$cur" ) )
    else
        _update_buildr_cache
        COMPREPLY=( $(compgen -W "${cached_buildr_targets}" -- ${cur}) )
    fi
    __ltrim_colon_completions "$cur"
}

complete -F _buildr buildr
