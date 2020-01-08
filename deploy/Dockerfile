FROM ubuntu:18.04
LABEL maintainer="Ding Li <dingli.cm@gmail.com>"

ADD ./sources.list.tx /etc/apt/sources.list
RUN apt-get update && apt-get install -y python3 python3-venv

EXPOSE 80
ENTRYPOINT cd /workspace/chainmore/; \
           . ./venv/bin/activate; \
	   export DATABASE_URL=/workspace; \
	   export APK_URL=/workspace; \
	   gunicorn --bind 0.0.0.0:80 --workers=2 'chainmore:create_app()'
