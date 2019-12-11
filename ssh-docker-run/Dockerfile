FROM docker:19.03.2

RUN apk update && apk add --no-cache openssh

ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
