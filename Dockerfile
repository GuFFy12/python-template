FROM python:3.13.12-slim AS builder
COPY --from=astral/uv:0.10.6 /uv /uvx /usr/local/bin
WORKDIR /app
COPY pyproject.toml uv.lock .
RUN uv sync --no-dev --frozen --compile-bytecode
COPY . .

FROM python:3.13.12-slim
WORKDIR /app
ENV PATH="/app/.venv/bin:$PATH"
COPY --from=builder /app .
ENTRYPOINT ["python", "src/app/main.py"]
