set minimum-version := "1.55.0"
set shell := ["bash", "--norc", "-euo", "pipefail", "-c"]
set default-list
set dotenv-load := false

# Check public structured sources and local links with the prepared public CI library.
check:
    "${NDDEV_CICD_PYTHON:-python3}" -m nddev_cicd documentation-check --root . --contract .github/nddev-ci.toml

# Check the adopted structure with the separately prepared private owning validator.
structure:
    "${NDDEV_STRUCTURE_VALIDATOR:-nddev}" check

# Check this project's native command source without rewriting it.
format-check:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt --check

# Format only the native command source; no profile or account change.
fmt:
    {{ quote(just_executable()) }} --justfile {{ quote(justfile()) }} --fmt

# Verify local source/structure; image and GitHub presentation remain explicit review.
verify: check structure format-check
