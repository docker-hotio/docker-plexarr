#!/bin/sh

echo "Trying to get a Plex token..."
token=$(curl -fsL -u "${1}":"${2}" 'https://plex.tv/users/sign_in.json' -X POST -H 'X-Plex-Client-Identifier: '"$(cat /proc/sys/kernel/random/uuid)" -H 'X-Plex-Product: Plexarr' -H 'X-Plex-Provides: controller' -H 'X-Plex-Device: '"$(uname -s) $(uname -r)" | jq -r .[].authentication_token)

if [ -n "${token}" ] && [ "${token}" != null ]; then
    echo "Your Plex token is: ${token}"
else
    echo "Something went wrong trying to get a token!"
fi
