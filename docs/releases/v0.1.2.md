# v0.1.2 - Distribution and Installation

Date: 2026-02-26

## Highlights

- Added Python packaging metadata (`pyproject.toml`) and `mco` console entrypoint.
- Added npm wrapper package (`@tt-a1i/mco`) for Node-based environments.
- Added release workflows for PyPI and npm publishing.
- Updated README with installation instructions (npm wrapper and source install).

## Install

Available now (recommended):

```bash
npm i -g @tt-a1i/mco
```

From source:

```bash
python3 -m pip install -e .
```

PyPI package:
- Not published yet.
- Publish workflow is ready and will be enabled after Trusted Publisher setup.

## Notes

- npm wrapper requires `python3` available on `PATH`.
- YAML config still requires optional dependency: `pip install pyyaml`.
