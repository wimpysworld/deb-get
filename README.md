<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get</tt>
</h1>

<p align="center"><b><tt>apt-get</tt> functionality for .debs published in 3rd party repositories or via direct download.</i> It works on Ubuntu and derivative distributions.
<br />
Made with 💝 for <img src=".github/ubuntu.png" align="top" width="20" /></p>

## Introduction

`deb-get` makes is easy to install and update `.debs` published in 3rd party
apt repositories or made available via direct download on websites or GitHub
release pages.

## Install

Use `deb-get` to install `deb-get`

```bash
sudo apt install curl
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
```

Alternatively, you can [download the `.deb` of `deb-get` from the releases page](https://github.com/wimpysworld/deb-get/releases)
and install it manually.

## Usage

Here's an example of how to install Google Chrome.

```bash
sudo deb-get install google-chrome-stable
```

You can see what applications are supported by using `sudo deb-get list` or you
can search the available applications with `sudo deb-get search <app>`

You can upgrade packages installed using `deb-get` by running
`sudo deb-get upgrade`.

```
deb-get {update | upgrade | show pkg | install pkg | reinstall pkg | remove pkg
| purge pkg | search pkg | cache | clean | list | prettylist | help | version}

deb-get provides a high-level commandline interface for the package management
system to easily install and update packages published in 3rd party apt
repositories or via direct download.

update
        update is used to resynchronize the package index files from their sources.

upgrade
        upgrade is used to install the newest versions of all packages currently installed on the system.

install
        install is followed by one package desired for installation or upgrading.

reinstall
        reinstall is followed by one package desired for reinstallation.

remove
        remove is identical to install except that packages are removed instead of installed.

purge
        purge is identical to remove except that packages are removed and purged (any configuration files are deleted too).

clean
        clean clears out the local repository (/var/cache/deb-get) of retrieved package files.

search
        search for the given regex(7) term(s) from the list of available packages supported by deb-get and display matches.

show
        show information about the given package including its install source and update mechanism.

list
        list the packages available via deb-get.

prettylist
        markdown formatted list the packages available via deb-get. Use this to update README.md

cache
        list the contents of the deb-get cache (/var/cache/deb-get)
```

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

The software below can be installed, updated and removed using `deb-get`.

- `sudo deb-get install <packagename>`
- `sudo deb-get update`
- `sudo deb-get upgrade`
- `sudo deb-get remove <packagename>`
- `sudo deb-get purge <packagename>`

<img src=".github/debian.png" align="top" width="20" /> [1Password](https://1password.com/) (`1password`)<br />
<img src=".github/github.png" align="top" width="20" /> [AntiMicroX](https://antimicrox.github.io/) (`antimicrox`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Atom](https://atom.io/) (`atom`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (`azure-cli`)<br />
<img src=".github/github.png" align="top" width="20" /> [Etcher](https://www.balena.io/etcher/) (`balena-etcher-electron`)<br />
<img src=".github/github.png" align="top" width="20" /> [bat](https://github.com/sharkdp/bat) (`bat`)<br />
<img src=".github/direct.png" align="top" width="20" /> [BeerSmith](https://beersmith.com/) (`beersmith3`)<br />
<img src=".github/github.png" align="top" width="20" /> [Bitwarden](https://bitwarden.com/) (`bitwarden`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Brave](https://brave.com/) (`brave-browser`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Visual Studio Code](https://code.visualstudio.com/) (`code`)<br />
<img src=".github/github.png" align="top" width="20" /> [VSCodium](https://vscodium.com/) (`codium`)<br />
<img src=".github/github.png" align="top" width="20" /> [deb-get](https://github.com/wimpysworld/deb-get) (`deb-get`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Discord](https://discord.com/) (`discord`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Docker Engine](https://www.docker.com/) (`docker-ce`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Docker Desktop](https://www.docker.com/products/docker-desktop/) (`docker-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Dropbox](https://www.dropbox.com/) (`dropbox`)<br />
<img src=".github/github.png" align="top" width="20" /> [duf](https://github.com/muesli/duf) (`duf`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Element](https://element.io/) (`element-desktop`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Enpass](https://www.enpass.io/) (`enpass`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Exodus](https://exodus.com/) (`exodus`)<br />
<img src=".github/github.png" align="top" width="20" /> [fd](https://github.com/sharkdp/fd) (`fd`)<br />
<img src=".github/github.png" align="top" width="20" /> [Figma Linux](https://github.com/Figma-Linux/figma-linux) (`figma-linux`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Firefox ESR](https://www.mozilla.org/firefox/enterprise/) (`firefox-esr`)<br />
<img src=".github/github.png" align="top" width="20" /> [Franz](https://meetfranz.com/) (`franz`)<br />
<img src=".github/github.png" align="top" width="20" /> [git-delta](https://github.com/dandavison/delta) (`git-delta`)<br />
<img src=".github/github.png" align="top" width="20" /> [GitHub Desktop](https://desktop.github.com/) (`github-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [GitKraken](https://www.gitkraken.com/invite/ieih1QR3) (`gitkraken`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Gitter](https://gitter.im/) (`gitter`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Google Chrome](https://www.google.com/chrome/) (`google-chrome-stable`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Google Earth Pro](https://www.google.com/earth/versions/) (`google-earth-pro-stable`)<br />
<img src=".github/github.png" align="top" width="20" /> [Grype](https://github.com/anchore/grype) (`grype`)<br />
<img src=".github/github.png" align="top" width="20" /> [Heroic Games Launcher](https://heroicgameslauncher.com/) (`heroic`)<br />
<img src=".github/github.png" align="top" width="20" /> [Insomnia](https://insomnia.rest/) (`insomnia`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Insync](https://www.insynchq.com/) (`insync`)<br />
<img src=".github/github.png" align="top" width="20" /> [IRCCloud Desktop](https://www.irccloud.com/) (`irccloud-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [JabRef](https://www.jabref.org/) (`jabref`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Jami](https://jami.net/) (`jami`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Jellyfin](https://jellyfin.org/) (`jellyfin`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [KeePassXC](https://keepassxc.org/) (`keepassxc`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Keybase](https://keybase.io/) (`keybase`)<br />
<img src=".github/github.png" align="top" width="20" /> [LSDeluxe](https://github.com/Peltoche/lsd) (`lsd`)<br />
<img src=".github/github.png" align="top" width="20" /> [Ludo](https://ludo.libretro.com/) (`ludo`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Lutris](https://lutris.net/) (`lutris`)<br />
<img src=".github/github.png" align="top" width="20" /> [Mailspring](https://getmailspring.com/) (`mailspring`)<br />
<img src=".github/github.png" align="top" width="20" /> [Mattermost Desktop](https://mattermost.com/) (`mattermost-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [micro](https://micro-editor.github.io/) (`micro`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Edge](https://www.microsoft.com/edge) (`microsoft-edge-stable`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Nextcloud Desktop](https://nextcloud.com/) (`nextcloud-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [Obsidian](https://obsidian.md/) (`obsidian`)<br />
<img src=".github/direct.png" align="top" width="20" /> [ocenaudio](https://www.ocenaudio.com/) (`ocenaudio`)<br />
<img src=".github/github.png" align="top" width="20" /> [ONLYOFFICE Desktop Editors](https://www.onlyoffice.com/en/desktop.aspx) (`onlyoffice-desktopeditors`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Opera](https://www.opera.com/) (`opera-stable`)<br />
<img src=".github/github.png" align="top" width="20" /> [Pandoc](https://pandoc.org/) (`pandoc`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Plex](https://www.plex.tv/) (`plexmediaserver`)<br />
<img src=".github/github.png" align="top" width="20" /> [PowerShell](https://docs.microsoft.com/powershell/) (`powershell`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Quickemu](https://github.com/quickemu-project/quickemu) (`quickemu`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Quickgui](https://github.com/quickemu-project/quickgui) (`quickgui`)<br />
<img src=".github/github.png" align="top" width="20" /> [Rambox](https://rambox.app/) (`rambox`)<br />
<img src=".github/github.png" align="top" width="20" /> [Rclone](https://rclone.org/) (`rclone`)<br />
<img src=".github/github.png" align="top" width="20" /> [Raspberry Pi Imager](https://github.com/raspberrypi/rpi-imager) (`rpi-imager`)<br />
<img src=".github/direct.png" align="top" width="20" /> [RStudio](https://www.rstudio.com/) (`rstudio`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Signal](https://signal.org/) (`signal-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [Simplenote](https://simplenote.com/) (`simplenote`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Skype](https://www.skype.com/) (`skypeforlinux`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Slack](https://slack.com/) (`slack-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Spotify](https://www.spotify.com/) (`spotify-client`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Merge](https://www.sublimemerge.com/) (`sublime-merge`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Text](https://www.sublimetext.com/) (`sublime-text`)<br />
<img src=".github/github.png" align="top" width="20" /> [Syft](https://github.com/anchore/syft) (`syft`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Syncthing](https://syncthing.net/) (`syncthing`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Tailscale](https://tailscale.com.com/) (`tailscale`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Teams](https://www.microsoft.com/microsoft-teams/group-chat-software) (`teams`)<br />
<img src=".github/direct.png" align="top" width="20" /> [TeamViewer](https://www.teamviewer.com/) (`teamviewer`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Terraform](https://www.terraform.io/) (`terraform`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Tixati](https://www.tixati.com/) (`tixati`)<br />
<img src=".github/github.png" align="top" width="20" /> [Trivy](https://aquasecurity.github.io/trivy/) (`trivy`)<br />
<img src=".github/launchpad.png" align="top" width="20" /> [Ubuntu-Make](https://github.com/ubuntu/ubuntu-make/) (`ubuntu-make`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Vivaldi](https://vivaldi.com/) (`vivaldi-stable`)<br />
<img src=".github/direct.png" align="top" width="20" /> [VueScan](https://www.hamrick.com/) (`vuescan`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Wavebox](https://wavebox.io/) (`wavebox`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Webex](https://www.webex.com/) (`webex`)<br />
<img src=".github/debian.png" align="top" width="20" /> [WeeChat](https://weechat.org/) (`weechat`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Wire](https://wire.com/) (`wire-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [Zenith](https://github.com/bvaisvil/zenith) (`zenith`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Zoom](https://zoom.us/) (`zoom`)<br />

**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- apt repository <img src=".github/debian.png" align="top" width="20" />
- GitHub releases <img src=".github/github.png" align="top" width="20" />
- Launchpad PPA <img src=".github/launchpad.png" align="top" width="20" />
- Website <img src=".github/direct.png" align="top" width="20" />

### How do package updates work?

#### 3rd party apt repositories and PPAs

If packages are available via a 3rd party `apt` repository
<img src=".github/debian.png" align="top" width="20" /> or a Launchpad PPA
<img src=".github/launchpad.png" align="top" width="20" />, then those packages
will be updated/upgraded when using `apt-get update` and `apt-get upgrade`.

#### GitHub Releases and direct downloads

For `.deb` packages that are only available via GitHub Releases
<img src=".github/github.png" align="top" width="20" /> or direct download
<img src=".github/direct.png" align="top" width="20" />, then those packages
can only be updated/upgrade by using `deb-get update` and `deb-get upgrade`.

## Adding Software

Create a `function` in `deb-get` that is named `deb_the-package-name` where
*"the-package-name"* is the `Package:` name shown using `apt show`. The `deb_`
prefix is required so `deb-get` can dynamically build the list of available
software.

Take a look at the existing `deb_` functions as reference for adding new
packages to `deb-get`.

### What is acceptable?

This defines what software that can be added to `deb-get` and therefore the
scope of the project in terms if what it is intended for.

  * Software **has to be published as a `.deb`**. Build from source, tarballs or other binaries releases will not be accepted.
  * Software **has to be published authoritatively by the upstream vendor, project or maintainer**. Packages published by unassociated community contributors will not be accepted.
  * **Software must be actively maintained**.
  * **Only stable/production releases**. Daily/nightly, betas or pre-release versions will not be accepted.
  * GitHub Releases and direct downloads **must have a reliable means to dynamically determine the current upstream published version**. Hardcoded versions will be not accepted.
  * **Packages from the official Debian or Ubuntu apt archives will not be accepted**.
