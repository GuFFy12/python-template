#!/bin/bash

git lfs pull
npm ci
uv sync --frozen
uv run pre-commit install --install-hooks
