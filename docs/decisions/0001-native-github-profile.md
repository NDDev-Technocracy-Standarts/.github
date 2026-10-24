---
status: accepted
date: 2026-10-25
adaptation:
  standard: {id: std-0001, version: 3.0.1}
  rules: [R-0018]
  paths: [profile]
  purpose: source
  reason: GitHub publishes an organization introduction from the native profile directory.
  result: The profile directory owns the public introduction and its local presentation assets.
  verification: Review the profile Markdown preview and image links and run the native structural check.
---
# Keep the GitHub-native organization profile location

This is an engineering decision within the authorized standards adoption work. GitHub consumes
`profile/README.md` as the organization's public introduction. Moving that source would remove
its native discovery. Keep it as a locally documented source module, with maintenance instructions
in the repository root. The complete standards selection remains in `.nds/nddev.yaml`.

The structural validator preserves the base classification finding as adapted. Its result alone
does not verify presentation; source review must also inspect the rendered introduction and links.
