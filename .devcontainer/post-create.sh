#!/bin/bash

sudo chown vscode .venv

# Команды которые запустятся после первого запуска devcontainer.

uv sync --frozen
uv run dprint output-resolved-config > /dev/null
uv run lefthook install
