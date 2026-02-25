#!/bin/bash

git lfs install
git lfs pull
npm ci
pip install uv
uv sync
uv run pre-commit install
