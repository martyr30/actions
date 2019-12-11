FROM docker:19.03.2

RUN apk update && ls

ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
