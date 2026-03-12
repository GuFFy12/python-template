# Python Template

## Customization

1.  **Ruff**
    If you encounter specific warnings that do not fit your workflow, simply add their error codes to the `ignore` list in the configuration file.

2.  **Pre-commit Hooks**
    - **`check-executables-have-shebangs`**: Uncomment this hook if you are **not** using macOS. It is currently disabled because it triggers errors within `.devcontainer` environments on macOS.
    - **`no-commit-to-branch`**: Uncomment this hook (specifically the `args: ["--branch", "main"]` line) for production-grade projects to prevent direct commits to the `main` branch.
