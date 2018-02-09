# Dockerized MPD_sima with docker-compose

Launch it on your music directory, it runs MPD_sima/MPD/Icecast within 3 containers with docker-compose.

[MPD_sima](http://kaliko.me/code/mpd-sime/) is feeding
[MusicPlayerDaemon](http://musicpd.org/) with similar artists, then
[Icecast](http://icecast.org/) exposes a Vorbis audio http stream on `localhost`.

Requirements:
  * GNU/Linux distribution
  * docker
  * docker-compose

[More info](./sima).
