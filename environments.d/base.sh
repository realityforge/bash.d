# Basic script that unsets all environment variables or forces
# desired defaults. This should be included at the start of other
# environment scripts via:
#
#   DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#   source $DIR/base.sh
#
export PEER_PROJECTS=

export CONFIG_ALLOW_HOSTNAME=true

unset PG_DB_SERVER_HOST
unset PG_DB_SERVER_PORT
unset PG_DB_SERVER_USERNAME
unset PG_DB_SERVER_PASSWORD
unset MS_DB_SERVER_HOST
unset MS_DB_SERVER_PORT
unset MS_DB_SERVER_INSTANCE
unset MS_DB_DEFAULT_INSTANCE
unset MS_DB_SERVER_USERNAME
unset MS_DB_SERVER_PASSWORD

export OPENMQ_HOST=${HOSTNAME}

unset RPTMAN_ENDPOINT
unset RPTMAN_DOMAIN
unset RPTMAN_USERNAME
unset RPTMAN_PASSWORD

unset KEYCLOAK_REALM
unset KEYCLOAK_REALM_PUBLIC_KEY
unset KEYCLOAK_AUTH_SERVER_URL
unset KEYCLOAK_ADMIN_PASSWORD
unset KEYCLOAK_TOKEN
unset KEYCLOAK_SERVICE_USERNAME
unset KEYCLOAK_SERVICE_PASSWORD

export AS_JAVA=${JAVA_HOME}
export GLASSFISH_HOME=${HOME}/Applications/payara
alias asadmin=${GLASSFISH_HOME}/glassfish/bin/asadmin
alias imqcmd=${GLASSFISH_HOME}/mq/bin/imqcmd
