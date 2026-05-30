# Собираем образ для разработки. Образы не slim!
FROM python:3.13.12-trixie@sha256:1cd859c53cde85de47ef35a154e05925d80ff4d133033ef6e2937ed290f27b2e
# Для хранения больших файлов. Прочитайте про lfs если у вас есть большие файлы в проекте.
RUN apt-get update && apt-get install -y --no-install-recommends \
    git-lfs \
    && rm -rf /var/lib/apt/lists/* \
    && git lfs install --system
COPY --from=astral/uv:0.11.14@sha256:1025398289b62de8269e70c45b91ffa37c373f38118d7da036fb8bb8efc85d97 /uv /uvx /usr/local/bin
