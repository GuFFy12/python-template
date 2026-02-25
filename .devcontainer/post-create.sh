#!/bin/bash

git lfs install
git lfs pull
npm install
pip install uv
uv sync
uv run pre-commit install
