#!/bin/bash

git lfs pull
uv sync --frozen
uv run dprint output-resolved-config > /dev/null
uv run pre-commit install-hooks
uv run lefthook install
