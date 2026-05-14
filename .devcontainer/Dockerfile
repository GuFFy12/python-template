FROM python:3.13.12-bookworm@sha256:6f40ba3065cb48d5bdf25c2ca3bee237000796a22b08c406e702a8e7d4a50594
COPY --from=astral/uv:0.11.14@sha256:1025398289b62de8269e70c45b91ffa37c373f38118d7da036fb8bb8efc85d97 /uv /uvx /usr/local/bin
RUN apt-get update && apt-get install -y --no-install-recommends \
    git-lfs \
    && rm -rf /var/lib/apt/lists/* \
    && git lfs install --system
