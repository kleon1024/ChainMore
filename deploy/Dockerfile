FROM ubuntu:18.04
LABEL maintainer="Ding Li <dingli.cm@gmail.com>"

ADD ./sources.list.tx /etc/apt/sources.list
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip

EXPOSE 80
ENTRYPOINT /workspace/chainmore/start
