# The base URL

It is the URL that is used as base to build the URLs to download all the files from the external repository. It must be in a format so that the following gives the URLs of the manifest file and the package definition files:

```bash
${REPO_URL}/manifest
${REPO_URL}/packages/${APP}
```

The URL can point to any HTTP(S) server, as long as the URLs above correctly provide the desired files. Ideally, to prevent unnecessary traffic and slow repository updates, the server should support the `ETag`/`If-None-Match` HTTP headers, or at least `Last-Modified`/`If-Modified-Since`.

As an example, the base URL of an external repository hosted in a GitHub repository would be:

```
https://raw.githubusercontent.com/<user-organization>/<repository>/<branch>
```

# The manifest file

This is the most important file in an external repository, since without it nothing else would work. Its first line must always contain the base URL of the repository. The following lines must contain the names of the package definition files present in the `packages` path, one per line, ideally sorted and without repetition. They can also be commented (starting with `#`), in which case the package definition file is considered deprecated. **No file declared in the manifest should be missing, or else the caching mechanism will break**.

# The package definition files

A package definition file is a bash script whose purpose is to define the required information about a package. Since it is not meant to be executed by itself, but rather sourced by `deb-get`, it does not need to have the bash shebang or be set as executable. It also does not have the `.sh` extension.

Create a package definition file named `<the-package-name>` in the `packages` path in the repository, where `<the-package-name>` **must** be **exactly** the `Package:` name shown using `apt show`. Then add `<the-package-name>` to the `manifest` file.

The variables defined in the package definition file are the following:

* `ARCHS_SUPPORTED`: A space-separated list of supported architectures, following the format used by `dpkg --print-architecture`.
* `CODENAMES_SUPPORTED`: A space-separated list of supported upstream codenames, supporting the values from `UPSTREAM_CODENAME`.
* `APT_KEY_URL`: A URL to the ASCII-armored keyring file.
* `GPG_KEY_URL`: A URL to the binary keyring file.
* `APT_LIST_NAME`: The name of the `*.list` file, without the extension.
* `APT_REPO_URL`: The line that will be printed to the `*.list` file, including `deb`, `[arch=]`, `[signed-by=]`, the repository URL, the distribution codename and any extra required components.
* `PPA`: The PPA address, following the format used by `apt-add-repository`, including the `ppa:` prefix.
* `URL`: The URL to the `*.deb` file that will be downloaded. The name of the file must be the last thing at the end of it.
* `VERSION_PUBLISHED`: The version of the package.
* `EULA`: An End User License Agreement message for packages that have them.
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

The environment variables available to the package definition file are the following:

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

The helper functions available to the package definition file are the following:

* `unroll_url`: Handles redirection and returns the final URL.
* `get_github_releases`: Sets `METHOD` to `github` and saves the GitHub releases JSON file from GitHub API to `CACHE_DIR`.

Use the following package definition templates as reference for adding a new package to the repository, according to the installation method of the package. The package definition files already implemented in the main repository can serve as further reference.

## APT repository

If the keyring file is in the ASCII-armored format (extension `*.asc`), use this template:

```bash
ARCHS_SUPPORTED=""
CODENAMES_SUPPORTED=""
APT_KEY_URL=""
APT_LIST_NAME=""
APT_REPO_URL=""
EULA=""
PRETTY_NAME=""
WEBSITE=""
SUMMARY=""
```

If the keyring file is in the binary format instead (extension `*.gpg`), use this template:

```bash
ARCHS_SUPPORTED=""
CODENAMES_SUPPORTED=""
GPG_KEY_URL=""
APT_LIST_NAME=""
APT_REPO_URL=""
EULA=""
PRETTY_NAME=""
WEBSITE=""
SUMMARY=""
```

## Launchpad PPA

```bash
PPA=""
EULA=""
PRETTY_NAME=""
WEBSITE=""
SUMMARY=""
```

## GitHub releases

Replace `<user-organization>` and `<repository>` with the correct values:

```bash
ARCHS_SUPPORTED=""
CODENAMES_SUPPORTED=""
get_github_releases "https://api.github.com/repos/<user-organization>/<repository>/releases/latest"
URL=""
VERSION_PUBLISHED=""
EULA=""
PRETTY_NAME=""
WEBSITE=""
SUMMARY=""
```

## Website/Direct download

```bash
ARCHS_SUPPORTED=""
CODENAMES_SUPPORTED=""
URL=""
VERSION_PUBLISHED=""
EULA=""
PRETTY_NAME=""
WEBSITE=""
SUMMARY=""
```
