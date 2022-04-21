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
deb-get {update | upgrade | show pkg | install pkg | reinstall pkg |
remove pkg | purge pkg | search pkg | cache | clean | list | help | version}

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
        show information about the given package including its download source.

list
        list the packages available via deb-get.

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

<img src=".github/debian.png" align="top" width="20" /> [1Password](https://1password.com/) (`1password`)<br />
<img src=".github/github.png" align="top" width="20" /> [AntiMicroX](https://antimicrox.github.io/) (`antimicrox`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Atom](https://atom.io/) (`atom`)<br />
<img src=".github/github.png" align="top" width="20" /> [Etcher](https://www.balena.io/etcher/) (`balena-etcher-electron`)<br />
<img src=".github/github.png" align="top" width="20" /> [Bitwarden](https://bitwarden.com/) (`bitwarden`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Brave](https://brave.com/) (`brave-browser`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Visual Studio Code](https://code.visualstudio.com/) (`code`)<br />
<img src=".github/github.png" align="top" width="20" /> [VSCodium](https://vscodium.com/) (`codium`)<br />
<img src=".github/github.png" align="top" width="20" /> [deb-get](https://github.com/wimpysworld/deb-get) (`deb-get`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Discord](https://discord.com/) (`discord`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Docker Engine](https://www.docker.com/) (`docker-ce`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Docker Desktop](https://www.docker.com/products/docker-desktop/) (`docker-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Dropbox](https://www.dropbox.com/) (`dropbox`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Element](https://element.io/) (`element-desktop`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Enpass](https://www.enpass.io/) (`enpass`)<br />
<img src=".github/github.png" align="top" width="20" /> [Figma Linux](https://github.com/Figma-Linux/figma-linux) (`figma-linux`)<br />
<img src=".github/github.png" align="top" width="20" /> [Franz](https://meetfranz.com/) (`franz`)<br />
<img src=".github/github.png" align="top" width="20" /> [GitHub Desktop](https://desktop.github.com/) (`github-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [GitKraken](https://www.gitkraken.com/invite/ieih1QR3) (`gitkraken`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Gitter](https://gitter.im/) (`gitter`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Google Chrome](https://www.google.com/chrome/) (`google-chrome-stable`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Google Earth Pro](https://www.google.com/earth/versions/) (`google-earth-pro-stable`)<br />
<img src=".github/github.png" align="top" width="20" /> [Grype](https://github.com/anchore/grype) (`grype`)<br />
<img src=".github/github.png" align="top" width="20" /> [Heroic Games Launcher](https://heroicgameslauncher.com/) (`heroic`)<br />
<img src=".github/github.png" align="top" width="20" /> [Insomnia](https://insomnia.rest/) (`insomnia`)<br />
<img src=".github/github.png" align="top" width="20" /> [IRCCloud Desktop](https://www.irccloud.com/) (`irccloud-desktop`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Jami](https://jami.net/) (`jami`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Jellyfin](https://jellyfin.org/) (`jellyfin`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Keybase](https://keybase.io/) (`keybase`)<br />
<img src=".github/github.png" align="top" width="20" /> [Ludo](https://ludo.libretro.com/) (`ludo`)<br />
<img src=".github/github.png" align="top" width="20" /> [Mailspring](https://getmailspring.com/) (`mailspring`)<br />
<img src=".github/github.png" align="top" width="20" /> [micro](https://micro-editor.github.io/) (`micro`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Edge](https://www.microsoft.com/edge) (`microsoft-edge-stable`)<br />
<img src=".github/github.png" align="top" width="20" /> [Obsidian](https://obsidian.md/) (`obsidian`)<br />
<img src=".github/direct.png" align="top" width="20" /> [ocenaudio](https://www.ocenaudio.com/) (`ocenaudio`)<br />
<img src=".github/github.png" align="top" width="20" /> [ONLYOFFICE Desktop Editors](https://www.onlyoffice.com/en/desktop.aspx) (`onlyoffice-desktopeditors`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Opera](https://www.opera.com/) (`opera-stable`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Plex](https://www.plex.tv/) (`plexmediaserver`)<br />
<img src=".github/github.png" align="top" width="20" /> [PowerShell](https://docs.microsoft.com/powershell/) (`powershell`)<br />
<img src=".github/github.png" align="top" width="20" /> [Rambox](https://rambox.app/) (`rambox`)<br />
<img src=".github/github.png" align="top" width="20" /> [Rclone](https://rclone.org/) (`rclone`)<br />
<img src=".github/github.png" align="top" width="20" /> [Raspberry Pi Imager](https://github.com/raspberrypi/rpi-imager) (`rpi-imager`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Signal](https://signal.org/) (`signal-desktop`)<br />
<img src=".github/github.png" align="top" width="20" /> [Simplenote](https://simplenote.com/) (`simplenote`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Skype](https://www.skype.com/) (`skypeforlinux`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Slack](https://slack.com/) (`slack-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Spotify](https://www.spotify.com/) (`spotify-client`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Merge](https://www.sublimemerge.com/) (`sublime-merge`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Text](https://www.sublimetext.com/) (`sublime-text`)<br />
<img src=".github/github.png" align="top" width="20" /> [Syft](https://github.com/anchore/syft) (`syft`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Syncthing](https://syncthing.net/) (`syncthing`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Teams](https://www.microsoft.com/microsoft-teams/group-chat-software) (`teams`)<br />
<img src=".github/github.png" align="top" width="20" /> [Trivy](https://aquasecurity.github.io/trivy/) (`trivy`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Vivaldi](https://vivaldi.com/) (`vivaldi-stable`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Wavebox](https://wavebox.io/) (`wavebox`)<br />
<img src=".github/debian.png" align="top" width="20" /> [WeeChat](https://weechat.org/) (`weechat`)<br />
<img src=".github/debian.png" align="top" width="20" /> [Wire](https://wire.com/) (`wire-desktop`)<br />
<img src=".github/direct.png" align="top" width="20" /> [Zoom](https://zoom.us/) (`zoom`)<br />

**Legend**

The icons denotes how `deb-get` retrieves the vendor/project published packages.

- apt repository <img src=".github/debian.png" align="top" width="20" />
- GitHub releases <img src=".github/github.png" align="top" width="20" />
- Launchpad PPA <img src=".github/launchpad.png" align="top" width="20" />
- Website <img src=".github/direct.png" align="top" width="20" />
