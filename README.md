<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get</tt>
</h1>

<p align="center"><b><tt>apt-get</tt> functionality for .debs published in 3rd party repositories or via direct download.</i> It works on Ubuntu and derivative distributions.
<br />
Made with 💝 for <img src=".github/ubuntu.png" align="top" width="18" /></p>

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

- [1Password](https://1password.com/) (`1password`)
- [AntiMicroX](https://antimicrox.github.io/) (`antimicrox`)
- [Atom](https://atom.io/) (`atom`)
- [Etcher](https://www.balena.io/etcher/) (`balena-etcher-electron`)
- [Bitwarden](https://bitwarden.com/) (`bitwarden`)
- [Brave](https://brave.com/) (`brave-browser`)
- [Visual Studio Code](https://code.visualstudio.com/) (`code`)
- [VSCodium](https://vscodium.com/) (`codium`)
- [deb-get](https://github.com/wimpysworld/deb-get) (`deb-get`)
- [Discord](https://discord.com/) (`discord`)
- [Docker Engine](https://www.docker.com/) (`docker-ce`)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (`docker-desktop`)
- [Dropbox](https://www.dropbox.com/) (`dropbox`)
- [Element](https://element.io/) (`element-desktop`)
- [Enpass](https://www.enpass.io/) (`enpass`)
- [Figma Linux](https://github.com/Figma-Linux/figma-linux) (`figma-linux`)
- [Franz](https://meetfranz.com/) (`franz`)
- [GitHub Desktop](https://desktop.github.com/) (`github-desktop`)
- [GitKraken](https://www.gitkraken.com/invite/ieih1QR3) (`gitkraken`)
- [Gitter](https://gitter.im/) (`gitter`)
- [Google Chrome](https://www.google.com/chrome/) (`google-chrome-stable`)
- [Google Earth Pro](https://www.google.com/earth/versions/) (`google-earth-pro-stable`)
- [Heroic Games Launcher](https://heroicgameslauncher.com/) (`heroic`)
- [Insomnia](https://insomnia.rest/) (`insomnia`)
- [IRCCloud Desktop](https://www.irccloud.com/) (`irccloud-desktop`)
- [Jami](https://jami.net/) (`jami`)
- [Jellyfin](https://jellyfin.org/) (`jellyfin`)
- [Keybase](https://keybase.io/) (`keybase`)
- [Ludo](https://ludo.libretro.com/) (`ludo`)
- [Mailspring](https://getmailspring.com/) (`mailspring`)
- [micro](https://micro-editor.github.io/) (`micro`)
- [Microsoft Edge](https://www.microsoft.com/edge) (`microsoft-edge-stable`)
- [Obsidian](https://obsidian.md/) (`obsidian`)
- [ocenaudio](https://www.ocenaudio.com/) (`ocenaudio`)
- [ONLYOFFICE Desktop Editors](https://www.onlyoffice.com/en/desktop.aspx) (`onlyoffice-desktopeditors`)
- [Opera](https://www.opera.com/) (`opera-stable`)
- [Plex](https://www.plex.tv/) (`plexmediaserver`)
- [PowerShell](https://docs.microsoft.com/powershell/) (`powershell`)
- [Rambox](https://rambox.app/) (`rambox`)
- [Rclone](https://rclone.org/) (`rclone`)
- [Raspberry Pi Imager](https://github.com/raspberrypi/rpi-imager) (`rpi-imager`)
- [Signal](https://signal.org/) (`signal-desktop`)
- [Simplenote](https://simplenote.com/) (`simplenote`)
- [Skype](https://www.skype.com/) (`skypeforlinux`)
- [Slack](https://slack.com/) (`slack-desktop`)
- [Spotify](https://www.spotify.com/) (`spotify-client`)
- [Sublime Merge](https://www.sublimemerge.com/) (`sublime-merge`)
- [Sublime Text](https://www.sublimetext.com/) (`sublime-text`)
- [Syncthing](https://syncthing.net/) (`syncthing`)
- [Microsoft Teams](https://www.microsoft.com/microsoft-teams/group-chat-software) (`teams`)
- [Vivaldi](https://vivaldi.com/) (`vivaldi-stable`)
- [Wavebox](https://wavebox.io/) (`wavebox`)
- [WeeChat](https://weechat.org/) (`weechat`)
- [Wire](https://wire.com/) (`wire-desktop`)
- [Zoom](https://zoom.us/) (`zoom`)
