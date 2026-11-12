# Собираем образ для разработки. Образы не slim!
FROM python:3.13.12-trixie@sha256:1cd859c53cde85de47ef35a154e05925d80ff4d133033ef6e2937ed290f27b2e
COPY --from=astral/uv:0.13.8@sha256:5cc1805e2426484abca4ad46ea783bab281fdb225fd82d8ce6d66a81254bac85 /uv /uvx /usr/local/bin
