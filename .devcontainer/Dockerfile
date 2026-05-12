FROM python:3.13-bookworm@sha256:bad39b148919ac7ead3792f68e6d246e22a3d2d2aa6e0efaf6d59824271949f8
COPY --from=astral/uv:0.11@sha256:3b7b60a81d3c57ef471703e5c83fd4aaa33abcd403596fb22ab07db85ae91347 /uv /uvx /usr/local/bin
RUN apt-get update && apt-get install -y --no-install-recommends \
    git-lfs \
    && rm -rf /var/lib/apt/lists/* \
    && git lfs install --system
