# Agreper - minimal, no-JS forum software

**For security issues, please send a mail to agreper+security@demindiro.com**

![Hello world!](https://static.agreper.com/hello_world.png)

Agreper is a forum board with a focus on being easy to set up and manage.

## Install & running

### Linux

Ensure you have the necessary packages, e.g. for Debian:

```
apt install git make sqlite3 python3-venv python3-pip
```

First clone or [download the latest release](https://github.com/Demindiro/agreper/archive/refs/tags/v0.1.1.tar.gz).

Then setup with:

```
./init_sqlite.sh forum.db
```

Lastly, run with:

```
./run_sqlite.sh forum.db forum.pid
```

You will need a proxy such as nginx to access the forum on the public internet.

### Docker

Build the docker image using the following command
```
docker build -t agreper .
```

You can then run the docker image using the docker-compose.yml file or the following command
```
docker run -p 8000:8000 -v "$(pwd)/forum.db:/app/forum.db" agreper
```
*Please note you should use a reverse proxy like caddy or nginx this is meerly for testing purposes

## Upgrading

To upgrade from a previous version, run ``upgrade_sqlite.sh``
