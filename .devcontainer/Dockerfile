FROM python:3.13
COPY --from=astral/uv:0.10 /uv /uvx /usr/local/bin
COPY --from=node:24-slim /usr/local/bin /usr/local/bin
COPY --from=node:24-slim /usr/local/lib/node_modules /usr/local/lib/node_modules
