FROM python:3.13.12@sha256:6f40ba3065cb48d5bdf25c2ca3bee237000796a22b08c406e702a8e7d4a50594

COPY --from=astral/uv:0.11.8@sha256:3b7b60a81d3c57ef471703e5c83fd4aaa33abcd403596fb22ab07db85ae91347 /uv /uvx /usr/local/bin
COPY --from=node:24.15.0-slim@sha256:03eae3ef7e88a9de535496fb488d67e02b9d96a063a8967bae657744ecd513f2 /usr/local/bin /usr/local/bin
COPY --from=node:24.15.0-slim@sha256:03eae3ef7e88a9de535496fb488d67e02b9d96a063a8967bae657744ecd513f2 /usr/local/lib/node_modules /usr/local/lib/node_modules

RUN apt-get update && apt-get install -y --no-install-recommends \
    git-lfs \
    && rm -rf /var/lib/apt/lists/*
RUN git lfs install --system
