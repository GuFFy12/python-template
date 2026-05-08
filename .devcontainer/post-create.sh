#!/bin/bash

git lfs pull
uv sync --frozen
uv run lefthook install
