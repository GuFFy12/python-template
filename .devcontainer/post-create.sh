#!/bin/bash

git lfs pull
npm install
uv sync
uv run pre-commit install --install-hooks
