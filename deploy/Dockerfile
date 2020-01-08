FROM ubuntu:18.04
LABEL maintainer="Ding Li <dingli.cm@gmail.com>"

ENV LC_ALL=C.UTF-8; \
    LANG=C.UTF-8

ADD ./sources.list.tx /etc/apt/sources.list

RUN apt-get update && apt-get install -y python3 python3-dev python3-pip python3-venv git

RUN git clone https://github.com/kleon1024/ChainMore-API-Flask chainmore
WORKDIR ./chainmore
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple 
RUN flask init

EXPOSE 80
ENTRYPOINT gunicorn --bind 0.0.0.0:80 --workers=2 'chainmore:create_app()'
