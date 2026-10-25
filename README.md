# NDDev Standards organization profile

The public introduction is maintained in [profile/README.md](profile/README.md).

Its cover follows the NDDev light design system and was generated with ImageGen
for this
organization. It is abstract artwork, not a product screenshot.

[Visit NDDev](https://nddev.ai)

## Source maintenance

Maintenance adopts the [selected STD-0008 source](https://github.com/NDDev-Technocracy-Standarts/std-0008-component-versioning/blob/0c737860044edc8053cba33b94c1bdf05ac16480/standard.yml)
where an independently published versioned unit exists. This profile currently
has no software package or numbered product release; Git commits identify its
content. Routine profile edits do not create synthetic component versions. Public
presentation remains in its existing source.

The complete selected standards are recorded in [.nds/nddev.yaml](.nds/nddev.yaml), with the
[GitHub-native profile placement decision](docs/decisions/0001-native-github-profile.md).
[GitHub Releases](https://github.com/NDDev-Technocracy-Standarts/.github/releases) is the journal
for any future independently versioned unit; the current profile remains identified by Git commits.

Public PR and main CI use the public shared library on standard GitHub-hosted Linux. They check
structured sources, local links, mechanical prose properties, workflow contracts and native Git
history. The prepared private structural validator and visual review remain part of the owner's
authorized merge checks; public CI does not load private tools or credentials.

## Native commands

Bare `just` lists applicable source operations without installing tools or reading credentials.
`just check` uses the prepared public CI-library Python; select `NDDEV_CICD_PYTHON` when that
interpreter is outside the current environment. `just structure` uses the prepared private owning
validator (`NDDEV_STRUCTURE_VALIDATOR` when needed). `just verify` combines local source,
structure and command formatting. `just fmt` changes only the command source. Public CI invokes
the same native documentation owner and checks the command contract. Image generation and GitHub
presentation review keep their existing explicit workflows.
