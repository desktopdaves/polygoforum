FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y git make sqlite3 python3-venv python3-pip

RUN mkdir /app
COPY . /app
WORKDIR /app

EXPOSE 8000

CMD ["./startserver.sh"]
