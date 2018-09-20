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
HUGO_INTERNAL_PORT=80

# Change this to change the bind address for the program inside the container
HUGO_BIND_ADDR="0.0.0.0"

# Change this to change the hugo command we run in the container
HUGO_COMMAND="hugo serve -D --port ${HUGO_INTERNAL_PORT}

# Change this to change the time the process will run for, before it times out
# This is a random number between 30 and 600
COMMAND_TIMEOUT_SECONDS=$(( ((RANDOM<<15)|RANDOM) % 300 + 600 ))


########################################################################################################################
echo "-----"
echo "Exec timeout: ${COMMAND_TIMEOUT_SECONDS} seconds"
echo "-----"
timeout -t ${COMMAND_TIMEOUT_SECONDS} ${HUGO_COMMAND}
########################################################################################################################


# Plz can haz reschedule
exit 0

