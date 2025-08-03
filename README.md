# Project Standards

Welcome! This repository is my personal collection of standards, templates, and automation tools for software projects. I cre## 💡 Request a New Standard or Template

If you have an idea for a new standard, template, or script that could be useful, you're welcome to suggest it! You can:

- Open an issue describing your suggestion
- Submit a pull request with your proposed additiont to help myself stay organized and consistent across all my work—whether open source, private, or experimental. If you’re looking for a starting point to unify your own project workflows, feel free to use or adapt anything here.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/rmnavz/project-standards.svg)](https://github.com/rmnavz/project-standards/commits/main)

## 📖 Table of Contents

- [Project Standards](#project-standards)
  - [📖 Table of Contents](#-table-of-contents)
  - [🎯 Purpose](#-purpose)
  - [📂 Repository Structure](#-repository-structure)
  - [🚀 Quick Start](#-quick-start)
  - [📝 Prerequisites](#-prerequisites)
  - [✨ Features](#-features)
  - [🛠️ Usage](#️-usage)
    - [Call Reusable Workflows](#call-reusable-workflows)
    - [Copy Files](#copy-files)
    - [Symlink Configurations](#symlink-configurations)
  - [🤝 Contributing](#-contributing)
  - [📄 License](#-license)
  - [🗂️ Versioning \& Changelog](#️-versioning--changelog)
  - [💡 Request a New Standard or Template](#-request-a-new-standard-or-template)

## 🎯 Purpose

This repository is my personal toolkit for keeping all my development standards, templates, and best practices in one place. It's designed to help me stay consistent across my own projects—whether open source, private, or anything in between. By centralizing these resources, I make it easier to reuse, update, and share the things that help me work better, from code style and CI/CD pipelines to documentation and legal templates.

## 📂 Repository Structure

```text
.
├── .github/
│   ├── workflows/             # Reusable GitHub Actions workflows.
│   │   ├── reusable-build.yml
│   │   └── reusable-deploy.yml
│   ├── ISSUE_TEMPLATE/        # Issue templates for standardizing bug reports and feature requests.
│   └── pull_request_template.md # Template for all pull requests.
├── docs/                      # Centralized documentation templates.
│   ├── README_TEMPLATE.md
│   └── CONTRIBUTING_TEMPLATE.md
├── scripts/                   # Shared scripts for common automation tasks.
│   ├── lint.sh
│   └── setup.sh
├── config/                    # Shared configuration files.
│   ├── .eslintrc.js
│   └── .prettierrc
├── images/                    # Reusable Dockerfiles for consistent build environments.
│   └── Dockerfile.node
└── LICENSE                    # Standardized license template.
```

## 🚀 Quick Start


Clone the repository and copy or symlink the desired files:

```bash
git clone https://github.com/rmnavz/project-standards.git
cp project-standards/config/.eslintrc.js your-project/
cp project-standards/docs/README_TEMPLATE.md your-project/README.md
```

To create symbolic links (symlinks) for configuration files (recommended for easy updates):

```bash
# On Unix-like systems or Windows with Developer Mode enabled
ln -s $(pwd)/project-standards/config/.prettierrc your-project/.prettierrc
```

```

**Note for Windows users:** Symlink support requires Developer Mode. Run the above command in Git Bash or WSL.

## 📝 Prerequisites

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
   - Flexible scripts in [`scripts/`](scripts/) for local and CI/CD use.
2. **Reusable Docker Images**
   - Standardized [`Dockerfile.node`](images/Dockerfile.node) for consistent build environments.
3. **Standardized Configuration Files**
   - Centralized configs for ESLint and Prettier in [`config/`](config/).
4. **GitHub Templates**
   - Issue and PR templates in [`.github/`](.github/), plus optional `CODEOWNERS`.
5. **Centralized Documentation Standards**
   - Boilerplate templates in [`docs/`](docs/) for README and contributing guidelines.
6. **Shared License & Legal Templates**
   - Standard [`LICENSE`](LICENSE) for open-source projects.

## 🛠️ Usage

### Call Reusable Workflows

Reference workflows in your project's CI/CD file:

```yaml
jobs:
  build:
    uses: your-org/project-standards/.github/workflows/reusable-build.yml@main
```

### Copy Files

Copy configuration or template files:

```bash
cp project-standards/config/.eslintrc.js your-project/
cp project-standards/docs/README_TEMPLATE.md your-project/README.md
```

### Symlink Configurations

Create symbolic links to inherit updates:

```bash
ln -s $(pwd)/project-standards/config/.prettierrc your-project/.prettierrc
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
