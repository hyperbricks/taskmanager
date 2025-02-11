# Task manager (Poc) 

[Hyperbricks](https://github.com/hyperbricks) Task Manager project with [PostgREST](https://postgrest.org/) and [HTMX](https://htmx.org/)

- **Task Manager**: Create, update, and delete tasks.
- **API-Driven**: Uses PostgREST for automatic RESTful API generation from PostgreSQL tables.
- **Declarative UI**: Built with Hyperbricks' `<API_RENDER>` component for dynamic rendering.


- Hyperbricks installation

```
go install github.com/hyperbricks/hyperbricks/cmd/hyperbricks@latest
```

- Docker from docker directory (recommended) or PostgreSQL installed
```
cd docker
sudo docker compose up -d
```

set POSTGREST_URL
```
export POSTGREST_URL="http://<your_host_here>:<your_port_here>"
```

Start hyperbricks from root directory:
```
hyperbricks start -m taskmanager
```
