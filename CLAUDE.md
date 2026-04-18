# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is Alex Leontiev's personal polyglot repository — a collection of utilities, tools, educational materials, and side projects. Directories are named `for<language>` or `for<project>`.

## Common Commands

### Python Tools

```bash
# Install Python dependencies (global utilities)
pip install -r forpython/requirements.txt

# Install the Trello CLI as an editable package
pip install -e forpython/trello/

# Run scripts in miscutils directly
python forpython/miscutils/<script>.py --help

# Install bookmarks app dependencies
pip install -r forpython/forbookmarks/requirements.txt
```

### Verilog (forverilog/)

```bash
cd forverilog
make              # Compile with iverilog and generate VCD waveforms
iverilog -o sim <module>.v <module>_tb.v && vvp sim   # Run a single testbench
```

### Scheme/LaTeX (forscheme/)

```bash
cd forscheme
make              # Builds LaTeX papers (requires Mathematica for some targets)
```

### Bookmarks App (forbookmarks/)

```bash
cd forbookmarks
make              # See Makefile for available targets
```

### Docker Services (for-docker/)

Each subdirectory has its own Dockerfile and sometimes a `docker-compose.yml`:

```bash
cd for-docker/<service>
docker build -t <service> .
# For Airflow:
cd for-docker/local-airflow
docker-compose up
```

### Jupyter Notebooks (forjupyter/)

```bash
cd forjupyter
pip install -r requirements.txt
jupyter notebook
```

## Architecture

### Directory Map

| Directory | Contents |
|-----------|----------|
| `forpython/` | Python tools and utilities |
| `forpython/trello/` | Installable Click CLI for Trello automation |
| `forpython/forbookmarks/` | Orthodox Christian bookmarks manager (MongoDB + Jinja2) |
| `forpython/miscutils/` | 58+ utility scripts: Jira CLI, git tools, Google Drive, translation |
| `forpython/forml/` | Machine learning experiments |
| `forverilog/` | Digital logic design, Verilog testbenches |
| `forscheme/` | Mathematical research code (integration theory) with LaTeX output |
| `forjupyter/` | ~52 Jupyter notebooks (calculus, data analysis, JLPT prep) |
| `forperl/` | Perl utility scripts |
| `forjava/` | Java projects including Telegram bots (Maven) |
| `formasha/` | Educational materials (calculus, linear algebra, logic design) |
| `for-docker/` | ~10 containerized services (Airflow, Trello cron, German dictionary, PDF processing) |
| `bin/` | Bash utility scripts |
| `gospels/` | LaTeX files for religious texts/notes |
| `.emacs.d/`, `.vim/` | Editor configurations |

### Key Integrations

- **MongoDB**: Used by the bookmarks app (`forpython/forbookmarks/`) and some miscutils scripts
- **Google APIs**: Sheets and Drive access via service account credentials (see `forpython/miscutils/README.md` for setup)
- **Trello API**: CLI tool (`forpython/trello/`) and Docker cron job (`for-docker/cron-trello/`)
- **Git submodules**: 4 submodules — `fortexmacs`, `forlatex`, `flashcard-app`, `hk-church-bookmarks-pdfs`

### Python Package Layout

`forpython/trello/` follows standard setuptools packaging with entry points defined in `setup.py`. The `miscutils/` directory contains standalone scripts, not a package — run them directly with Python.

### Environment / Config

- `.envrc` (direnv): sets environment variables for local development
- `.env` files exist in individual Docker and project subdirectories
- `forpython/requirements.txt`: shared Python dependencies (42 packages including Click, pandas, pymongo, Google APIs, matplotlib)
