<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get</tt>
</h1>

<p align="center">
  <b>
    <tt>apt-get</tt> functionality for .debs published in 3rd party repositories or via direct download. It works on Debian, Ubuntu and their derivative distributions.
    <br />
    Made with 💝 for <img src=".github/ubuntu.png" align="top" width="20" /> & <img src=".github/debian.png" align="top" width="20" />
  </b>
</p>

## Introduction

`deb-get` makes it easy to install and update `.debs` published in 3rd party
apt repositories or made available via direct download on websites or GitHub
release pages.

## Install

Use `deb-get` to install `deb-get`.

```bash
sudo apt install curl lsb-release wget
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
```

Alternatively, you can [download the `.deb` of `deb-get` from the releases page](../../releases/latest)
and install it manually with

``` bash
sudo apt-get install ./path/to/deb-get_<version>.deb
```
### GitHub Personal Access Token (PAT)

You must provide `deb-get` with a GitHub [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). Once created, insert it into the `DEBGET_TOKEN` environment variable for `deb-get` to use for authorization with the GitHub API.

For example:

```shell
export DEBGET_TOKEN=github-personal-access-token
deb-get update
deb-get upgrade
```

Skipping this step will lead to failures during the `update`, `upgrade`, and `install` commands.

For more information, see the [API rate limit section below](#github-api-rate-limits).

## Usage

Here's an example of how to install Google Chrome.

```bash
deb-get install google-chrome-stable
```

You can see what applications are supported by using `deb-get list` or you
can search the available applications with `deb-get search <app>`.

You can upgrade packages installed using `deb-get` by running
`deb-get upgrade`.

<!-- [[[cog
import subprocess
import cog

result = subprocess.check_output(["./deb-get", "help"], encoding="utf-8")
# strip the "Usage" header
help = result.replace("Usage\n\n", "").rstrip()
cog.out(f"```\n{help}\n```")
]]] -->
```

deb-get {update [--repos-only] [--quiet] | upgrade [--dg-only] | show <pkg list> | install <pkg list>
        | reinstall <pkg list> | remove [--remove-repo] <pkg list>
        | purge [--remove-repo] <pkg list>
        | search [--include-unsupported] <regex> | cache | clean
        | list [--include-unsupported] [--raw|--installed|--not-installed]
        | prettylist [<repo>] | csvlist [<repo>] | fix-installed [--old-apps]
        | help | version}

deb-get provides a high-level commandline interface for the package management
system to easily install and update packages published in 3rd party apt
repositories or via direct download.

update
    update is used to resynchronize the package index files from their sources.
    When --repos-only is provided, only initialize and update deb-get's
    external repositories, without updating apt or looking for updates of
    installed packages.
    When --quiet is provided the fetching of deb-get repository updates is done without progress feedback.

upgrade
    upgrade is used to install the newest versions of all packages currently
    installed on the system.
    When --dg-only is provided, only the packages which have been installed by deb-get will be upgraded.

install
    install is followed by one package (or a space-separated list of packages)
    desired for installation or upgrading.

reinstall
    reinstall is followed by one package (or a space-separated list of
    packages) desired for reinstallation.

remove
    remove is identical to install except that packages are removed instead of
    installed. When --remove-repo is provided, also remove the apt repository
    of apt/ppa packages.

purge
    purge is identical to remove except that packages are removed and purged
    (any configuration files are deleted too). When --remove-repo is provided,
    also remove the apt repository of apt/ppa packages.

clean
    clean clears out the local repository (/var/cache/deb-get) of retrieved
    package files.

search
    search for the given regex(7) term(s) from the list of available packages
    supported by deb-get and display matches. When --include-unsupported is
    provided, include packages with unsupported architecture or upstream
    codename and include PPAs for Debian-derived distributions.

show
    show information about the given package (or a space-separated list of
    packages) including their install source and update mechanism.

list
    list the packages available via deb-get. When no option is provided, list
    all supported packages and tell which ones are installed (slower). When
    --include-unsupported is provided, include packages with unsupported
    architecture or upstream codename and include PPAs for Debian-derived
    distributions (faster). When --raw is provided, list all packages and do
    not tell which ones are installed (faster). When --installed is provided,
    only list the packages installed (faster). When --not-installed is provided,
    only list the packages not installed (faster).

prettylist
    markdown formatted list the packages available in repo. repo defaults to
    01-main. If repo is 00-builtin or 01-main the packages from 00-builtin are
    included. Use this to update README.md.

csvlist
    csv formatted list the packages available in repo. repo defaults to
    01-main. If repo is 00-builtin or 01-main the packages from 00-builtin are
    included. Use this with 3rd party wrappers.

cache
    list the contents of the deb-get cache (/var/cache/deb-get).

fix-installed
    fix installed packages whose definitions were changed. When --old-apps is
    provided, transition packages to new format. This command is only intended
    for internal use.

help
    show this help.

version
    show deb-get version.
```
<!-- [[[end]]] -->

### Why?

3rd party apt repositories exist. They are not going away.

Some application vendors and projects express their support for Debian/Ubuntu
by publishing `.debs` of their software as direct downloads or via
their own apt repositories. `deb-get` makes it easy to find, install and update
`.debs` published in this way.

  - Perhaps you want to use software that is not (yet) officially packaged for Debian/Ubuntu.
  - Perhaps you want to use software that is fast moving and newer versions are available from the vendor/project.
  - Perhaps you want to use some non-free software that Debian/Ubuntu cannot distribute due to licensing restrictions.

`deb-get` tries to remedy this by providing a curated index of software
available for Ubuntu that is published by the project or vendor. `deb-get` is
inspired by Software Boutique, a graphical application I co-authored that does
much the same thing and has been included in [Ubuntu MATE](https://ubuntu-mate.org)
since 2015.

## Supported Software

The list of the software that can be installed, updated and removed using `deb-get`'s main repository is available at [01-main/README](01-main/README.md).

### How do package updates work?

#### 3rd party apt repositories and PPAs

If packages are available via a 3rd party `apt` repository
<img src=".github/debian.png" align="top" width="20" /> or a Launchpad PPA
<img src=".github/launchpad.png" align="top" width="20" />, then those packages
will be updated/upgraded when using `sudo apt-get update` and `sudo apt-get upgrade`.

#### GitHub Releases and direct downloads

For `.deb` packages that are only available via GitHub Releases
<img src=".github/github.png" align="top" width="20" /> or direct download
<img src=".github/direct.png" align="top" width="20" />, then those packages
can only be updated/upgraded by using `deb-get update` and `deb-get upgrade`.

#### GitHub API Rate Limits

`deb-get` uses the [GitHub REST API](https://docs.github.com/en/rest) when updating the package index files for GitHub Releases
<img src=".github/github.png" align="top" width="20" /> and for downloading the associated `.debs`. This API is [rate-limited](https://docs.github.com/en/rest/overview/resources-in-the-rest-api#rate-limiting) to 60 calls per hour per source IP address. This limit is vital for keeping the API responsive and available to all GitHub users. However, a lot of GitHub releases are now handled by `deb-get` so you will experience temporary failure to perform the following functions.

* `update` the `deb-get` package index files
* `upgrade` currently installed packages via GitHub Releases <img src=".github/github.png" align="top" width="20" />
* `install` new applications via GitHub Releases <img src=".github/github.png" align="top" width="20" />

If you have a GitHub account you can provide an authorization token during your GitHub API usage to increase your rate limit to 5000 requests per hour per authenticated user.  To do this you will need to use a [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) with GitHub. Once you have created a token within GitHub (or identified an appropriate existing token), insert it into the `DEBGET_TOKEN` environment variable for `deb-get` to use with the GitHub API.

You probably want to put this into your `.profile` so it is always available. Remember to never commit secrets in dotfiles to public git repositories!

```shell
# In .profile
export DEBGET_TOKEN=github-personal-access-token
```



## Adding Software

For information on what is acceptable as suggestion for new packages and instructions on how to open a PR to add a new package to the main repository, head to [01-main/CONTRIBUTING](01-main/CONTRIBUTING.md).

### Adding external repositories

It is possible to also add a `deb-get`-compatible external repository, and supplement the list of supported packages, typically because you need to:

1. Add something which does not meet any of the general guidelines of the main repository; or
2. Change the definition of a package from the main repository.

For information on how to create and maintain a `deb-get`-compatible external repository, head to [EXTREPO](EXTREPO.md).

How to use:

* Manually create the file `/etc/deb-get/<priority>-<repo>.repo`, containing in its first line the base URL of the repository.
    * The `<priority>` value is a two-digit number between 00 and 99 that defines the order in which the repositories will be loaded (00 first, 99 last), so if any conflicting definitions are found, the one from the repository with the highest priority will be used (the builtin definitions from the `deb-get` script itself have priority 00, the main repository has priority 01 and the custom user includes have priority 99).
    * The `<repo>` value can be anything, but it should preferably be unique and easy to remember.
* Run `deb-get update`, so the manifest file and the package definition files are downloaded.

### Custom User Includes

As a more advanced feature, it is possible to also add your own local customizations or overrides, and supplement the list of packages supported by the main repository. This feature is especially useful so that your local copy of the main repository can remain unmodified and always be kept fully up to date by moving your customizations out in a separate folder away from the main repository.

Typically because:

1. You are waiting on a pending request for a new software package, which has been submitted for consideration but has not been reviewed / accepted / merged / released yet; or
2. You need to add something which does not meet any of the general guidelines of the main repository, for whatever various reason(s).

How to use:

* Manually create the folder `/etc/deb-get/99-local.d/` if it does not exist already. By default, `deb-get` does not create this folder unless your specific distribution has packaged it that way.
* Any files directly within this folder will be bash sourced e.g. `. /etc/deb-get/99-local.d/appname1`.
* The name of the added file **must** match **exactly** the name of the package being defined.
* For information on how to create a package definition file, head to [EXTREPO](EXTREPO.md#the-package-definition-files).
* Your user custom package definition files are then loaded after the package definitions from any added repository.
* A recommendation message is printed for any new user added definitions, with a URL link to open a request.
* Warning messages are then also printed for any conflicts detected for overridden definitions (of same name), which then take priority over existing ones.

For the last situation, this is most often meant as a helpful reminder to remove your custom definition once it has been successfully merged upstream into the main repository, so after the main repository updates itself you are properly notified. It also avoids keeping lots of duplicate definitions around.

We really hope that you will enjoy the convenience and flexibility of the user overrides feature, so please consider in return to open new issues and pull requests, for any new package definitions you create, so that we can share those back with the wider community. Many thanks for your consideration!

## Related projects

  * [App Outlet](https://appoutlet.github.io/): *A Universal linux app store*
  * [bin-get](https://github.com/OhMyMndy/bin-get): *Script to easily and safely fetch binaries from GitHub Releases/tags*
  * [makedeb](https://www.makedeb.org/): *A simplicity-focused packaging tool for Debian archives*
  * [MakeResolveDeb](https://www.danieltufvesson.com/makeresolvedeb): *Install DaVinci Resolve or DaVinci Resolve Studio on Debian*
  * [pacstall](https://pacstall.dev/): *The AUR alternative for Ubuntu*
  * [Ubuntu Make](https://github.com/ubuntu/ubuntu-make): *Easy setup of common tools for developers on Ubuntu.*
  * [unsnap](https://github.com/popey/unsnap): *Quickly migrate from using snap packages to flatpaks*
## In the media

  * [The deb-get tool helps Ubuntu (and derivative distro) fans grab extra apps](https://www.gamingonlinux.com/2022/05/the-deb-get-tool-helps-ubuntu-and-derivative-distro-fans-grab-extra-apps/) - **GamingOnLinux**
  * [Deb-Get is ‘Apt-Get’ for 3rd-Party Ubuntu Software](https://www.omgubuntu.co.uk/2022/05/use-deb-get-to-install-popular-linux-apps-on-ubuntu) - **omg! ubuntu!**
  * [How To Install Third-Party Linux Applications with Deb-Get](https://www.tomshardware.com/uk/how-to/install-linux-apps-with-deb-get) - **toms HARDWARE**
  * [How to use deb-get to install third-party software on Ubuntu](https://www.techrepublic.com/article/use-deb-get-install-third-party-software-ubuntu/) - **TechRepublic**
  * [Ubuntu MATE’s Lead Creates a Nifty Tool to Help Install 3rd Party Deb Packages](https://news.itsfoss.com/deb-get-ubuntu/) - **It's FOSS**
  * [Easily Get 3rd-Party Software on Ubuntu With Deb-Get](https://fosspost.org/deb-get-install-3rd-party-software-ubuntu/) - **FOSS Post**
  * [deb-get, an "apt-get" to install third-party software on Ubuntu](https://ubunlog.com/en/deb-get-un-apt-get-para-instalar-software-de-terceros-en-ubuntu/) - **ubunlog**
  * [deb-get, a utility for installing third-party software](https://www.linuxadictos.com/en/deb-get-una-utilidad-para-instalar-software-de-terceros.html) - **Linux Addicted**
