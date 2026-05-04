FROM python:3.13.12

COPY --from=astral/uv:0.10.6 /uv /uvx /usr/local/bin
COPY --from=node:24.15-slim /usr/local/bin /usr/local/bin
COPY --from=node:24.15-slim /usr/local/lib/node_modules /usr/local/lib/node_modules

RUN apt-get update && apt-get install -y --no-install-recommends \
    git-lfs \
    && rm -rf /var/lib/apt/lists/*
RUN git lfs install --system
