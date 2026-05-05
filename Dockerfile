FROM python:3.13.12-slim@sha256:f1927c75e81efd1e091dbd64b6c0ecaa5630b38635a3d1c04034ac636e1f94c8 AS builder
COPY --from=astral/uv:0.11.9@sha256:6b6fa841d71a48fbc9e2c55651c5ad570e01104d7a7d701f57b2b22c0f58e9b1 /uv /uvx /usr/local/bin
WORKDIR /app
COPY pyproject.toml uv.lock .
RUN uv sync --no-dev --frozen --compile-bytecode
COPY . .

FROM python:3.13.12-slim@sha256:f1927c75e81efd1e091dbd64b6c0ecaa5630b38635a3d1c04034ac636e1f94c8
WORKDIR /app
ENV PATH="/app/.venv/bin:$PATH"
COPY --from=builder /app .
ENTRYPOINT ["python", "src/python_template/main.py"]
