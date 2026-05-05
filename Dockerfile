FROM python:3.13.12-slim@sha256:f1927c75e81efd1e091dbd64b6c0ecaa5630b38635a3d1c04034ac636e1f94c8 AS builder
COPY --from=astral/uv:0.11.8@sha256:3b7b60a81d3c57ef471703e5c83fd4aaa33abcd403596fb22ab07db85ae91347 /uv /uvx /usr/local/bin
WORKDIR /app
COPY pyproject.toml uv.lock .
RUN uv sync --no-dev --frozen --compile-bytecode
COPY . .

FROM python:3.13.12-slim@sha256:f1927c75e81efd1e091dbd64b6c0ecaa5630b38635a3d1c04034ac636e1f94c8
WORKDIR /app
ENV PATH="/app/.venv/bin:$PATH"
COPY --from=builder /app .
ENTRYPOINT ["python", "src/python_template/main.py"]
