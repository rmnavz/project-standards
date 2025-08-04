# Project Standards

Welcome! This repository is my personal collection of standards, templates, and automation tools for software projects. I created it to help myself stay organized and consistent across all my work—whether open source, private, or experimental. If you’re looking for a starting point to unify your own project workflows, feel free to use or adapt anything here.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/rmnavz/project-standards.svg)](https://github.com/rmnavz/project-standards/commits/main)

## 📖 Table of Contents

- [Project Standards](#project-standards)
  - [📖 Table of Contents](#-table-of-contents)
  - [🎯 Purpose](#-purpose)
  - [📂 Repository Structure](#-repository-structure)
  - [🚀 Quick Start](#-quick-start)
  - [� Prerequisites](#-prerequisites)
  - [✨ Features](#-features)
  - [🛠️ Usage](#️-usage)
  - [🤝 Contributing](#-contributing)
  - [📄 License](#-license)
  - [🗂️ Versioning \& Changelog](#️-versioning--changelog)
  - [💡 Request a New Standard or Template](#-request-a-new-standard-or-template)

## 🎯 Purpose

This repository is my personal toolkit for keeping all my development standards, templates, and best practices in one place. It's designed to help me stay consistent across my own projects—whether open source, private, or anything in between. By centralizing these resources, I make it easier to reuse, update, and share the things that help me work better, from code style and CI/CD pipelines to documentation and legal templates.

## 📂 Repository Structure

```text
.
├── .github/                      # GitHub Actions workflows and templates
│   ├── workflows/                # CI/CD, release, docs, security, and version management workflows
│   │   ├── dotnet-ci.yml
│   │   ├── dotnet-docs.yml
│   │   ├── dotnet-release-app.yml
│   │   ├── dotnet-release-nuget.yml
│   │   ├── dotnet-security.yml
│   │   ├── dotnet-test.yml
│   │   └── dotnet-version-management.yml
│   ├── ISSUE_TEMPLATE/           # Issue templates for bug reports and feature requests
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   └── pull_request_template.md  # Template for all pull requests
├── docs/                         # Centralized documentation templates
│   ├── README_TEMPLATE.md
│   └── CONTRIBUTING_TEMPLATE.md
├── scripts/                      # Shared scripts for common automation tasks
│   ├── lint.sh                   # Linting and code style checks for .NET
│   └── setup.sh                  # Automated .NET project setup
├── config/                       # Shared configuration files
│   ├── launch.json               # VS Code launch configuration for .NET
│   └── tasks.json                # VS Code build/test/publish tasks for .NET
├── images/                       # Reusable Dockerfiles for build environments
│   └── Dockerfile.dotnet         # Dockerfile for .NET environment
├── CHANGELOG.md                  # Project changelog
├── docfx.json                    # DocFX configuration for documentation
└── LICENSE                       # Standardized license template
```

## 🚀 Quick Start

Clone the repository and copy or symlink the desired files:

```bash
git clone https://github.com/rmnavz/project-standards.git
cp project-standards/config/launch.json your-project/.vscode/launch.json
cp project-standards/config/tasks.json your-project/.vscode/tasks.json
cp project-standards/docs/README_TEMPLATE.md your-project/README.md
cp project-standards/docs/CONTRIBUTING_TEMPLATE.md your-project/CONTRIBUTING.md
cp project-standards/images/Dockerfile.dotnet your-project/Dockerfile
```

To create symbolic links (symlinks) for configuration files (recommended for easy updates):

```bash
# On Unix-like systems or Windows with Developer Mode enabled
ln -s $(pwd)/project-standards/config/launch.json your-project/.vscode/launch.json
ln -s $(pwd)/project-standards/config/tasks.json your-project/.vscode/tasks.json
```

**Note for Windows users:** Symlink support requires Developer Mode. Run the above command in Git Bash or WSL.

## 📝 Prerequisites

To use the scripts, templates, and workflows in this repository, you may need:

- **Bash shell** (for running shell scripts)
- **Symlink support** (most Unix-like systems, or Windows with Developer Mode enabled)
- **Docker** (for building images with provided Dockerfiles)
- **Git** (for cloning and version control)
- **GitHub account** (for using workflows and templates)

Optional:

- **Node.js** (if using JavaScript/Node-based scripts or configs)
- **CI/CD platform** (e.g., GitHub Actions)

## ✨ Features

This repository provides a collection of reusable components to streamline development:

1. **Shared Scripts and Tooling**
   - Flexible scripts in [`scripts/`](scripts/) for .NET project setup and linting.
2. **Reusable Docker Images**
   - Standardized [`Dockerfile.dotnet`](images/Dockerfile.dotnet) for consistent .NET build environments.
3. **Standardized Configuration Files**
   - Centralized VS Code configs for launch and tasks in [`config/`](config/).
4. **GitHub Templates & Workflows**
   - Issue and PR templates, plus reusable workflows for CI, release, docs, security, and version management in [`.github/`](.github/).
5. **Centralized Documentation Standards**
   - Boilerplate templates in [`docs/`](docs/) for README and contributing guidelines.
6. **Shared License & Legal Templates**
   - Standard [`LICENSE`](LICENSE) for open-source projects.
7. **Changelog & DocFX**
   - [`CHANGELOG.md`](CHANGELOG.md) and [`docfx.json`](docfx.json) for documentation and release tracking.

## 🛠️ Usage

Reference reusable workflows in your project's CI/CD file:

```yaml
jobs:
  build:
    uses: rmnavz/project-standards/.github/workflows/reusable-build.yml@main
```

Copy configuration or template files:

```bash
cp project-standards/config/launch.json your-project/.vscode/launch.json
cp project-standards/config/tasks.json your-project/.vscode/tasks.json
cp project-standards/docs/README_TEMPLATE.md your-project/README.md
cp project-standards/docs/CONTRIBUTING_TEMPLATE.md your-project/CONTRIBUTING.md
cp project-standards/images/Dockerfile.dotnet your-project/Dockerfile
```

Create symbolic links to inherit updates:

```bash
ln -s $(pwd)/project-standards/config/launch.json your-project/.vscode/launch.json
ln -s $(pwd)/project-standards/config/tasks.json your-project/.vscode/tasks.json
```

## 🤝 Contributing

Contributions are welcome! Please read the [CONTRIBUTING_TEMPLATE.md](docs/CONTRIBUTING_TEMPLATE.md) for guidelines on submitting pull requests and reporting issues.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## 🗂️ Versioning & Changelog

Updates to standards, templates, and scripts are tracked using git tags and releases. Major changes and improvements are documented in the `CHANGELOG.md` file (if present). For the latest updates, check the [Releases](https://github.com/rmnavz/project-standards/releases) page or view commit history.

## 💡 Request a New Standard or Template

If you have an idea for a new standard, template, or script that could be useful, you’re welcome to suggest it! You can:

- Open an issue describing your suggestion
- Submit a pull request with your proposed addition
