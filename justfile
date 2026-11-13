set minimum-version := "1.55.0"
set shell := ["bash", "--norc", "-euo", "pipefail", "-c"]
set default-list
set dotenv-load := false

# Checks the justfile's format. Reads only.
check: format-check

# Checks the justfile's format.
format-check:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt --check

# Formats the justfile.
fix:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt

# The full check.
verify: check
