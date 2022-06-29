## Node.js with Postgres and kubernetes review

### Requirements

- Node.js v8+ or Docker and Docker Compose
- Postgres running on local instance or Docker

### Running on localMachine

- Install dependencies - `npm i`
- Run project - `npm start`

### OR: Docker

- `docker-compose up`

```shell
docker run -d -p 5432:5432 --name postgres \
    --env POSTGRES_PASSWORD=mysecretpassword \
    --env POSTGRES_DB=heroes\
    postgres
```

```shell
docker run -p 3000:3000 \
    --link postgres:postgres \
    -e POSTGRES_HOST=postgres:mysecretpassword@postgres:5432 \
    -e POSTGRES_DB=heroes \
    -e POSTGRES_SSL=false \
    guihenrique1/nodejs-with-postgres-api-example:latest
```

### Viewing

- Go to swagger page - `localhost:3000/documentation`

### Study tip
-  [Microsoft Kubernetes](https://www.youtube.com/playlist?list=PLB1hpnUGshULerdlzMknMLrHI810xIBJv)

### Using

- Minikube
- kubernetes
- Docker
- Node and Postgres

### Useful Commands

- in script.sh
