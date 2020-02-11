FROM envoyproxy/envoy-alpine-dev:latest

RUN apk update && apk add python3 bash curl
RUN pip3 install -q Flask==0.11.1 requests==2.18.4
RUN mkdir /code

ADD ./app.py /code
ADD ./start_service.sh /usr/local/bin/start_service.sh
RUN chmod u+x /usr/local/bin/start_service.sh

ENTRYPOINT /usr/local/bin/start_service.sh
