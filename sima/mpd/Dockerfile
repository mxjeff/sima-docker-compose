FROM alpine
LABEL maintainer "Kaliko <kaliko@azylum.org>"
RUN apk add --no-cache mpd mpc
RUN addgroup -S mpd
COPY --chown=mpd:mpd mpd.conf /etc/mpd.conf
VOLUME /music
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 6600
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mpd", "--stdout", "--no-daemon"]
