# Python Template

## Recommended Docker Environments

To achieve optimal performance and avoid file I/O bottlenecks when using Dev Containers, your startup method should depend on your operating system:

**Method A: `Reopen in Container` (Standard Workspace Mount)**
_Best for environments that handle Docker file sharing natively or with high-performance bridging._

- **Linux**: Works perfectly out of the box with native Docker.

- **macOS (OrbStack Optional but Recommended)**: Standard Docker Desktop works fine for this method. However, switching to **OrbStack** is highly recommended.

**Method B: `Clone Repository in Container Volume` (Isolated Volume)**
_Best for bypassing high cross-filesystem overhead by keeping code inside a Linux-native container._

- **Windows (Strictly Required)**: To ensure peak disk performance, **do not** mount the host Windows file system. Instead, exclusively use the VS Code command **`Dev Containers: Clone Repository in Container Volume`**. This keeps the source code entirely within the isolated Linux filesystem, preventing the severe performance degradation caused by Windows-to-Linux file sharing.

- **macOS (OrbStack Strictly Required)**: If you prefer the isolated volume approach on a Mac, you **must** use OrbStack. Using Docker Desktop with the "Clone in Volume" command combined with Docker Compose triggers `mounts denied` error, as Docker Desktop cannot resolve local build contexts inside isolated volumes. OrbStack natively handles this filesystem routing, allowing the clone process to work flawlessly.
