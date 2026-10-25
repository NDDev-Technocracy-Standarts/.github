# Organization profile maintenance

This repository owns its public organization introduction and cover. Edit
`profile/README.md`
and its local assets here. Keep the introduction in English and website links on
`nddev.ai`.
Do not publish private system details, customer data or NDA material. Preserve
the existing
organization avatar unless the owner explicitly requests a change. Use short
task branches
and merge-commit PRs into `main`; profile maintenance does not require a `dev`
branch.

Follow the [versioning applicability](README.md#source-maintenance) for any future
authorized release. Preserve native source identity and the profile owner; this
task does not apply account settings or introduce a release tool.

The complete standards selection is in [.nds/nddev.yaml](.nds/nddev.yaml); selected ADR paths
there own project adaptations. Resolve it with `std0000 resolve --project PATH` from the standards
catalog, then load the relevant items. A resolved selection does not prove implementation passed.
Run the prepared `nddev check` for repository structure. Review profile content in GitHub's Markdown
preview and verify the actual image and destination links before merging presentation changes.

Public source CI checks the public contract in `.github/nddev-ci.toml`. Keep that path usable
without private tools or authorization. A source CI pass does not establish profile presentation.

Use bare `just` for safe command discovery and `just verify` for local source/structure checks.
The README identifies prepared tool prerequisites and the scope of public CI versus visual review.
