# Adding Software
## What is acceptable?
This defines what software can be added to `deb-get`, and therefore the scope of the project in terms of what it is intended for:
* Software **has to be published as a `.deb`**. Build from source, tarballs or other binary releases will not be accepted.
* Software **has to be published authoritatively by the upstream vendor, project or maintainer**. Packages published by unassociated community contributors will not be accepted.
* Software **must be actively maintained**.
* **Only stable/production releases**. Daily/nightly, betas or pre-release versions will not be accepted.
* GitHub Releases and direct downloads **must have a reliable means to dynamically determine the current upstream published version**. Hardcoded versions will be not accepted.
* **Packages that install directly from the official Debian or Ubuntu apt archives will not be accepted**.
* **Packages that replace components in the hardware enablement stack (HWE) such as the Linux kernel and Mesa will not be accepted**.

If you found a package that fits the criteria above, have checked that it does not already have a pending request and has not previously been declined, please [open an issue](../../issues/new) following the template for requesting a new app.

## Creating the function
**Before [opening a pull request](../../pulls) to add a new package, make sure an [issue is already open](../../issues) for it**. **This helps keep things organized**.

**Before submitting a PR, do not forget to [update README.md](#updating-readmemd)**.

Create a function in `deb-get` that is named `deb_<the-package-name>` where `<the-package-name>` is the `Package:` name shown using `apt show`. The `deb_` prefix is required so `deb-get` can dynamically build the list of available software.

The variables defined in the function are the following:
* `ARCHS_SUPPORTED`: A space-separated list of supported architectures, following the format used by `dpkg --print-architecture`.
* `CODENAMES_SUPPORTED`: A space-separated list of supported upstream codenames, supporting the values from `UPSTREAM_CODENAME`.
* `APT_KEY_URL`: A URL to the ASCII-armored keyring file.
* `GPG_KEY_URL`: A URL to the binary keyring file.
* `APT_LIST_NAME`: The name of the `*.list` file, without the extension.
* `APT_REPO_URL`: The line that will be printed to the `*.list` file, including `deb`, `[arch=]`, `[signed-by=]`, the repository URL, the distribution codename and any extra required components.
* `PPA`: The PPA address, following the format used by `apt-add-repository`, including the `ppa:` prefix.
* `URL`: The URL to the `*.deb` file that will be downloaded. The name of the file must be the last thing at the end of it.
* `VERSION_PUBLISHED`: The version of the package.
* `EULA`: An EULA message for packages that have them.
* `PRETTY_NAME`: The brand name of the software.
* `WEBSITE`: A URL to the official website for the software.
* `SUMMARY`: A brief description of what the software is and does.

`ARCHS_SUPPORTED`, `CODENAMES_SUPPORTED` and `EULA` are optional and can be ommited when not needed. `ARCHS_SUPPORTED` defaults to `amd64`. The URLs must use the HTTPS protocol whenever possible (i.e. except when using HTTPS would not work). To ensure the optimal performance of the commands `prettylist` and `csvlist`, if more complex operations (such as `curl`, `unroll_url` or `grep` over the GitHub releases JSON file) are needed to define the variables (most likely `URL` and `VERSION_PUBLISHED`), they (and the variables that depend on them) must be wrapped by the following condition:
```bash
if [ "${ACTION}" != "prettylist" ]; then
    # Code goes here
fi
```

`APT_REPO_URL`, `PPA`, `PRETTY_NAME`, `WEBSITE`, `SUMMARY` and the call to `get_github_releases` must never be wrapped by the condition above.

The environment variables available to the function are the following:
* `CACHE_DIR`: The path to `deb-get` cache, `/var/cache/deb-get`.
* `HOST_CPU`: The CPU architecture of the host system, as output by `uname -m`. Supported values are `aarch64`, `armv7l` and `x86_64`.
* `HOST_ARCH`: The CPU architecture of the host system, as output by `dpkg --print-architecture`.
* `OS_ID`: The id of the OS, as output by `lsb_release --id --short`. Supported values are `Debian`, `Linuxmint`, `Neon`, `Pop`, `Ubuntu` and `Zorin`.
* `OS_ID_PRETTY`: The brand name of the OS.
* `OS_CODENAME`: The codename of the OS, as output by `lsb_release --codename --short`.
* `UPSTREAM_ID`: The id of the upstream distribution. Supported values are `ubuntu` and `debian`.
* `UPSTREAM_CODENAME`: The codename of the upstream distribution. Supported values are `buster`, `bullseye`, `bookworm`, `sid`, `focal`, `impish`, `jammy` and `kinetic`.
* `UPSTREAM_RELEASE`: The release version of the upstream distribution.
* `ACTION`: The command being executed by `deb-get`. Supported values are `update`, `upgrade`, `show`, `install`, `reinstall`, `remove`, `purge` and `prettylist`. `ACTION` for `csvlist` is `prettylist`.
* `APP`: The name of the package.

The helper functions available to the function are the following:
* `unroll_url`: Handles redirection and returns the final URL.
* `get_github_releases`: Sets `METHOD` to `github` and saves the GitHub releases JSON file from GitHub API to `CACHE_DIR`.

Use the following `deb_` function templates as reference for adding a new package to `deb-get`, according to the installation method of the package. The functions already implemented in `deb-get` can serve as further reference.

### APT repository
If the keyring file is in the ASCII-armored format (extension `*.asc`), use this template:
```bash
function deb_<the-package-name>() {
    ARCHS_SUPPORTED=""
    CODENAMES_SUPPORTED=""
    APT_KEY_URL=""
    APT_LIST_NAME=""
    APT_REPO_URL=""
    EULA=""
    PRETTY_NAME=""
    WEBSITE=""
    SUMMARY=""
}
```
If the keyring file is in the binary format instead (extension `*.gpg`), use this template:
```bash
function deb_<the-package-name>() {
    ARCHS_SUPPORTED=""
    CODENAMES_SUPPORTED=""
    GPG_KEY_URL=""
    APT_LIST_NAME=""
    APT_REPO_URL=""
    EULA=""
    PRETTY_NAME=""
    WEBSITE=""
    SUMMARY=""
}
```

### Launchpad PPA
```bash
function deb_<the-package-name>() {
    PPA=""
    EULA=""
    PRETTY_NAME=""
    WEBSITE=""
    SUMMARY=""
}
```

### GitHub releases
Replace `<user-organization>` and `<repository>` with the correct values:
```bash
function deb_<the-package-name>() {
    ARCHS_SUPPORTED=""
    CODENAMES_SUPPORTED=""
    get_github_releases "https://api.github.com/repos/<user-organization>/<repository>/releases/latest"
    URL=""
    VERSION_PUBLISHED=""
    EULA=""
    PRETTY_NAME=""
    WEBSITE=""
    SUMMARY=""
}
```

### Website/Direct download
```bash
function deb_<the-package-name>() {
    ARCHS_SUPPORTED=""
    CODENAMES_SUPPORTED=""
    URL=""
    VERSION_PUBLISHED=""
    EULA=""
    PRETTY_NAME=""
    WEBSITE=""
    SUMMARY=""
}
```

# Updating README.md
**This needs to be done every time a package is added or removed, the details of a package are changed or the `usage` function is changed**.

To update `README.md`, first install [cog](https://pypi.org/project/cogapp):
```bash
sudo pip3 install cogapp
```

Ensure any local Custom User Includes are removed from `/etc/deb-get/99-local.d/` (They can be replaced after the README.md is re-processed)

Then run:
```bash
cog -r README.md
```
