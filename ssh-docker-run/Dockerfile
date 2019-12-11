FROM docker:19.03.2

RUN apk update

ADD ssh-docker-run/run.sh /run.sh
ADD ssh-docker-run/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
