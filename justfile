set minimum-version := "1.55.0"
set shell := ["bash", "--norc", "-euo", "pipefail", "-c"]
set default-list
set dotenv-load := false

# Checks the public sources, their links and the justfile's format. Reads only.
check: format-check
    "${NDDEV_CICD_PYTHON:-python3}" -m nddev_cicd documentation-check --root . --contract .github/nddev-ci.toml

# Checks the justfile's format, as the CI contract runs it.
format-check:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt --check

# Formats the justfile.
fix:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt
