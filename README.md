# Docker Compose Server
> The Docker Compose configuration for server.

---

## Table of contents
* [General info](#general-info)
* [Setup](#setup)
* [Credits](#credits)
* [Contact](#contact)

---

## General info
Docker Compose is used for quick orchestration to run multi-container applications with a simple command .

Following are the summary of the services defined in **docker-compose.yml**:
- **security**: [Security microservice.](https://github.com/anas-didi95/vertx-security-server) ![deploy](https://github.com/anas-didi95/vertx-security-server/workflows/deploy/badge.svg?branch=main)
- **bot**: [Telegram bot microservice](https://github.com/anas-didi95/vertx-telegram-bot) ![deploy](https://github.com/anas-didi95/vertx-telegram-bot/workflows/deploy/badge.svg?branch=main)
- **urlshort** [URL shortener webservice](https://github.com/anas-didi95/golang-urlshort-server) ![deploy](https://github.com/anas-didi95/golang-urlshort-server/workflows/deploy/badge.svg)
- **nginx**: For reverse proxy of application.
- **certbot**: To enable HTTPS from Let's Encrypt. Will also check certificate and do renewal if required.

---

## Setup
1. Clone this repo.
2. Enable execution rights for the files.
```sh
chmod +x server-build.sh server-shutdown.sh server-start.sh init-letsencrypt.sh
```
3. Modify configuration for certbot.
    - Add domains and email addresses in <b>init-letsencrypt.sh</b>.
    - Replace all occurrences of api.anasdidi.dev with primary domain (the first one you added to <b>init-letsencrypt.sh</b>) in nginx/default.conf.
4. Run certbot init script.
```sh
./init-letsencrypt.sh
```
5. Start server in production mode *or set to false for development mode*.
```sh
./server-start.sh true
```
<br></br>
To shutdown server,
```sh
./server-shutdown.sh
```

---

## Credits
* Nginx Certbot Docker [nginx-certbot](https://github.com/wmnnd/nginx-certbot) by wmnnd.
* [golang-alpine - Build golang binaries for alpine linux](https://www.blang.io/posts/2015-04_golang-alpine-build-golang-binaries-for-alpine-linux/) by Benedikt Lang

---

## Contact
Created by [Anas Juwaidi](mailto:anas.didi95@gmail.com)
