# AGENTS.md

## Project overview

`deb-get` is a Bash CLI providing apt-get-like functionality for `.deb` packages from 3rd party apt repositories, PPAs, GitHub Releases, and direct downloads. Targets Debian, Ubuntu and derivatives. Single-file script (~65KB) with ~400 package definitions.

## Tech stack

- **Language:** Bash (POSIX-compatible where practical)
- **Dependencies:** `curl`, `wget`, `lsb-release`, `apt` toolchain, `gpg`
- **Documentation:** `cogapp` (Python) for README generation
- **CI:** GitHub Actions on Ubuntu

## Commands

```bash
# Run locally (requires Debian/Ubuntu with apt)
./deb-get help
./deb-get list --raw
./deb-get show <package>

# Regenerate README after changing usage()
pip3 install cogapp
cog -r README.md
```

## Project structure

```
deb-get                 # Main script (single file)
01-main/
  manifest              # Package list (first line: repo URL, then package names)
  packages/             # Package definition files (~400 files)
  README.md             # Auto-generated package list
  CONTRIBUTING.md       # Package submission guidelines
EXTREPO.md              # Package definition format documentation
```

## Package definitions

Package files are Bash scripts in `01-main/packages/` (no shebang, no extension). Name must match the apt package name exactly.

**Required variables:**
- `DEFVER` - Definition version (increment when changing repo/key config)
- `PRETTY_NAME` - Display name
- `WEBSITE` - Official URL
- `SUMMARY` - Brief description

**For apt repositories:**
- `ASC_KEY_URL` or `GPG_KEY_URL` - Signing key
- `APT_REPO_URL` - Repository line for sources.list

**For direct downloads/GitHub:**
- `URL` - Download URL for the `.deb`
- `VERSION_PUBLISHED` - Current upstream version

**Helper functions:**
- `get_github_releases "org/repo" "latest"` - Fetch GitHub releases JSON
- `get_website "url"` - Fetch HTML for scraping
- `unroll_url "url"` - Follow redirects to final URL

Wrap expensive operations (curl, grep on cached files) in:
```bash
if [ "${ACTION}" != "prettylist" ]; then
    # URL and VERSION_PUBLISHED logic here
fi
```

## Adding a package

1. Open an issue first using the new-app template
2. Create `01-main/packages/<package-name>` following EXTREPO.md
3. Add package name to `01-main/manifest` (alphabetically sorted)
4. Do NOT manually update README.md - maintainers regenerate it

## Code style

- Bash with `LC_ALL=C` for consistent sorting
- Quote all variable expansions: `"${VAR}"`
- Use `$(command)` not backticks
- Functions: `function name() {` style
- Indentation: 4 spaces

## CI testing

PRs touching `01-main/packages/*` or `01-main/manifest` trigger installation tests:
- Changed packages are installed on Ubuntu
- Verifies package detection and version matching
- Runs `deb-get purge` after successful install

## Environment variables

- `DEBGET_TOKEN` - GitHub PAT (required for GitHub releases, avoids rate limits)
- `DEBGET_CACHE_RTN` - Cache retention in minutes (default: 60)

## Commit conventions

Use conventional commit prefixes:
- `feat:` - New package or feature
- `fix:` - Bug fix or package definition fix
- `chore:` - Maintenance, dependency updates

Examples from history:
- `feat: add Deemix Gui`
- `fix(gotop): deprecate gotop`
- `chore: update supported releases - alsa-scarlett-gui`

## Constraints

- Packages must be `.deb` published by upstream vendor
- No source builds, no unofficial community packages
- GitHub releases must use dynamic version detection (no hardcoded versions)
- Target platforms: Debian, Ubuntu and derivatives only
