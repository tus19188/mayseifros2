FROM --platform=linux/amd64  ubuntu:18.04
RUN apt update && apt install -y openssl python3
COPY echo-server.py /echo-server.py

EXPOSE 5001/tcp
