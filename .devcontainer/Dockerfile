FROM python:3.13@sha256:760562ee51a183b1329fbbb07e476d5c8cda09a464fd5c96c3a805b54068fde5
COPY --from=astral/uv:0.10@sha256:88234bc9e09c2b2f6d176a3daf411419eb0370d450a08129257410de9cfafd2a /uv /uvx /usr/local/bin
COPY --from=node:24-slim@sha256:e8e2e91b1378f83c5b2dd15f0247f34110e2fe895f6ca7719dbb780f929368eb /usr/local/bin /usr/local/bin
COPY --from=node:24-slim@sha256:e8e2e91b1378f83c5b2dd15f0247f34110e2fe895f6ca7719dbb780f929368eb /usr/local/lib/node_modules /usr/local/lib/node_modules
