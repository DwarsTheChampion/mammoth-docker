# mammoth-docker

Docker setup for https://github.com/wizguin/mammoth.

### Prerequisites
* git
* Docker
* Docker Compose v2

### Installation

1. Clone this repository with submodules.

```console
git clone --recurse-submodules https://github.com/wizguin/mammoth-docker
```

2. Copy .env.example to .env and set passwords.

3. Create and start containers.

```console
docker compose up
```

4. Web server should now be running at http://localhost:8080/.
