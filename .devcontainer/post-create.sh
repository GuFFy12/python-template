#!/bin/bash

sudo chown vscode .venv

# Команды которые запустятся после первого запуска devcontainer.

uv sync --frozen
uv run lefthook install
