FROM python:slim-stretch
LABEL maintainer "Kaliko <kaliko@azylum.org>"
ENV DEBIAN_FRONTEND noninteractive

ARG version
ENV VERSION ${version:-0.14.4}
#ENV XDG_DATA_HOME /var/lib/sima/

RUN python3 -m venv /var/lib/mpd-sima
RUN bash -c "source /var/lib/mpd-sima/bin/activate && pip install MPD_sima==${VERSION}"

RUN groupadd -r sima && useradd --no-log-init --create-home --home-dir /var/lib/sima/ -r -g sima sima

COPY --chown=sima:sima start /usr/bin/start-sima
COPY --chown=sima:sima mpd-sima.cfg mpd-sima.top.cfg mpd-sima.album.cfg /etc/

USER sima

CMD sh /usr/bin/start-sima
