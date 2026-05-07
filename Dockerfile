FROM python:3.14.4-slim-bookworm@sha256:a28fb284c750940c714dba2e0cf5a26e5121c3c5ed06e9ca8bcfeaaba701b614 AS builder
COPY --from=astral/uv:0.11.8@sha256:3b7b60a81d3c57ef471703e5c83fd4aaa33abcd403596fb22ab07db85ae91347 /uv /uvx /usr/local/bin
WORKDIR /app
COPY pyproject.toml uv.lock .
RUN uv sync --no-dev --frozen --compile-bytecode
COPY . .

FROM python:3.14.4-slim-bookworm@sha256:a28fb284c750940c714dba2e0cf5a26e5121c3c5ed06e9ca8bcfeaaba701b614
WORKDIR /app
ENV PATH="/app/.venv/bin:$PATH"
COPY --from=builder /app .
ENTRYPOINT ["python", "src/python_template/main.py"]
