 #!/bin/bash
      3
      4 # This script installs the apache web server on the given host.
      5 # This script assumes the user running it has sudo privs on the remote host.
      6
      7 usage() {
      8   # Display the usage and exit.
      9   echo "Usage: ${0} HOST [HOSTN...]" >&2
     10   exit 1
     11 }
     12
     13 # Make sure the script is not being executed with superuser privileges.
     14 #if [[ "${UID}" -eq 0 ]]
     15 #then
     16  # echo 'Do not execute this script as root.' >&2
     17  # usage
     18 #fi
     19
     20 # If the user doesn't supply at least one argument, give them help.
     21 if [[ "${#}" -lt 1 ]]
     22 then
     23   usage
     24 fi
     25
     26 # Expect the best, prepare for the worst.
     27 EXIT_STATUS='0'
     28
     29 # Loop through the provided servers.
     30 for SERVER in "${@}"
     31 do
     32   echo "Starting installation process on: ${SERVER}"
     33
     34   # Ping the server to make sure it's up.
     35 #  ping -c 1 ${SERVER} &> /dev/null
     36
     37  # if [[ "${?}" -ne 0 ]]
     38  # then
     39   #  echo "${SERVER} down."
     40    # EXIT_STATUS='1'
     41    # continue
     42 #  fi

