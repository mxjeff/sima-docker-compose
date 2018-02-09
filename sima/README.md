# Dockerized MPD_sima with docker-compose

## Warning

**Default icecast passwords are unchanged !**
Change them to expose icecast on a public IP.

## tl,dr

    # Set an empty env. vars file
    :>.env
    MPD_MUSIC_DIRECTORY=/path/to/my/music/library docker-compose up -d

    # Then start playing a track
    ncmpc --port 6600
    # Access http audio stream
    x-www-browser http://localhost:8000/sima.ogg
    # Access Icecast
    x-www-browser http://localhost:8000

## Environment variables:

Mandatory:
  * MPD_MUSIC_DIRECTORY : host music directory to expose in MPD container

Optional:
  * ICECAST_EXPOSE_PORT : host port to contact icecast (defaults to 8000)
  * ICECAST_SOURCE_PASSWORD : Set icecast source password in icecast and mpd
  * ICECAST_ADMIN_PASSWORD :  Set icecast admin password in icecast
  * MPD_EXPOSE_PORT: host port to contact mpd (defaults to 6600)
  * MPD_SIMA_MODE: MPD_sima queue mode, either "top", "album" or "track" (defaults to "track")

You may set these variable in ./.env to have them read by docker-compose.


## MPD clients

Set your client to use the port defined in MPD_EXPOSE_PORT.  
With ncmpc or mpc:

    ncmpc --port 6600
    mpc --port 6600 playlist
