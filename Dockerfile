FROM openrm/krakend:0.9.0-2019.09.25

LABEL maintainer="dortiz@devops.faith"

ENV KRAKEND_CONFIG krakend.json

ADD reflex /usr/bin/reflex
ADD entrypoint.sh /

WORKDIR /etc/krakend

ENTRYPOINT [ "/entrypoint.sh" ]
