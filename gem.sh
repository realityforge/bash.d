DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f "${DIR}/cache/gem.1" ]; then
  rm -f ~/.gemrc
  echo "install: --no-rdoc --no-ri" > ~/.gemrc
  echo "update: --no-rdoc --no-ri" >> ~/.gemrc

  mkdir -p ${DIR}/cache
  touch ${DIR}/cache/gem.1
fi
