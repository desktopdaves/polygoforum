FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y git make sqlite3 python3-venv python3-pip

COPY . /app

WORKDIR /app

# Check if forum.db already exists if not create it
RUN test -f forum.db || ./init_sqlite.sh forum.db

# Run
CMD ["./run_sqlite.sh", "forum.db", "forum.pid"]
