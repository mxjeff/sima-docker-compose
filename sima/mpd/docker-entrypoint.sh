#!/bin/sh

if [ -n "$ICECAST_SOURCE_PASSWORD" ]; then
    echo "############ ENTRYPOINT ##################"
    echo "$ICECAST_SOURCE_PASSWORD"
    sed -i "s/password[^\t]*.*/password\t\"${ICECAST_SOURCE_PASSWORD}\"/g" /etc/mpd.conf
fi

exec "$@"
