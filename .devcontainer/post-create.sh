#!/bin/bash

git lfs pull
uv sync --frozen
uv run dprint output-resolved-config > /dev/null
uv run lefthook install
