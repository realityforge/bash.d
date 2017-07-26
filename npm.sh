DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ ! -f "${DIR}/cache/npm.1" ]; then
  npm set init.author.name "Peter Donald"
  npm set init.author.email "peter@realityforge.org"
  npm set init.author.url "http://realityforge.org"
	
  mkdir -p ${DIR}/cache
  touch ${DIR}/cache/npm.1
fi
	
