DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Setup configuration for a specific development environment
[ -f $DIR/environments.d/local.sh ] && source $DIR/environments.d/local.sh
