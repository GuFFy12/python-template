# Python Template

## Customization

1.  **Mypy**
    Adjust the configuration based on your preference for strict static typing.

2.  **Ruff**
    If you encounter specific warnings that do not fit your workflow, simply add their error codes to the `ignore` list in the configuration file.

3.  **Pre-commit Hooks**
    - **`check-executables-have-shebangs`**: Uncomment this hook if you are **not** using macOS. It is currently disabled because it triggers errors within `.devcontainer` environments on macOS.
    - **`no-commit-to-branch`**: Uncomment this hook (specifically the `args: ["--branch", "main"]` line) for production-grade projects to prevent direct commits to the `main` branch.

4.  **Extensions & Tooling**
    Install additional VS Code extensions, formatters, and linters relevant to your specific tech stack (e.g., `markdownlint`, Docker, etc.).

5.  **Git LFS**
    Initialize Git Large File Storage (LFS) if your project requires tracking large binary files.
