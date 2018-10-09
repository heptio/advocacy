#!/bin/bash
########################################################################################################################
#
# container-startup.sh
#
# This script is used to startup the program within the context of a container
#
#
########################################################################################################################

# Change this to change what port the program listens on inside the container
ADVOCACY_LISTEN_PORT=${ADVOCACY_LISTEN_PORT:-"80"}

# Change this to change the bind address for the program inside the container
ADVOCACY_BASE_URL=${ADVOCACY_BASE_URL:-"https://advocacy.corp.heptio.net"}


########################################################################################################################
 # timeout -t ${COMMAND_TIMEOUT_SECONDS} ${HUGO_COMMAND}
hugo serve -D --port ${ADVOCACY_LISTEN_PORT} -F -b ${ADVOCACY_BASE_URL}
########################################################################################################################