#!/bin/bash

npm install
uv sync
uv run pre-commit install --install-hooks
