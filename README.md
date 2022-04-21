<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get</tt>
</h1>

<p align="center"><b><tt>apt-get</tt> functionality for .debs published in 3rd party repositories or via direct download.</i> It works on Ubuntu and derivative distributions.
<br />
Made with 💝 for <img src=".github/ubuntu.png" align="top" width="18" /></p>

## Introduction

`get-deb` makes is easy to install and update `.debs` published in 3rd party
apt repositories or made available via direct download on websites or GitHub
release pages.

## Install

Use `get-deb` to install `get-deb`

```bash
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
```

Alternatively, you can [download the `.deb` of `get-deb` from the releases page](https://github.com/wimpysworld/deb-get/releases)
and install it manually.

## Usage

Here's an example of how to install Google Chrome.

```bash
sudo get-deb install google-chrome-stable
```

You can see what applications are supported by using `sudo get-deb list` or you
can search the available applications with `sudo get-deb search <app>`

You can upgrade packages installed using `get-deb` by running
`sudo get-deb upgrade`.

```
get-deb {update | upgrade | show pkg | install pkg | reinstall pkg |
remove pkg | purge pkg | search pkg | cache | clean | list | help | version}

get-deb provides a high-level commandline interface for the package management
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
        clean clears out the local repository (/var/cache/get-deb) of retrieved package files.

search
        search for the given regex(7) term(s) from the list of available packages supported by get-deb and display matches.

show
        show information about the given package including its download source.

list
        list the packages available via deb-get.

cache
        list the contents of the deb-get cache (/var/cache/get-deb)
```

### Why?

3rd party apt repositories exist. They are not going away.

Some application vendors and projects express their support for Debian/Ubuntu
by publishing `.debs` of their software as direct downloads or via
their own apt repositories. `deb-get` makes it easy to find, install and update
`.debs` published in this way.

  - Perhaps you want to use something that is not (yet) officially packaged for Debian/Ubuntu.
  - Perhaps you want to use some non-free software that Debian/Ubuntu cannot distribute due to licensing restrictions.

`deb-get` tries to remedy this by providing a curated index of software
available for Ubuntu that is published by the project or vendor.

## Supported Software

- [AntiMicroX](https://antimicrox.github.io/)
- [Atom](https://atom.io/)
- [Etcher](https://www.balena.io/etcher/)
- [Bitwarden](https://bitwarden.com/)
- [Brave](https://brave.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [deb-get](https://github.com/wimpysworld/deb-get)
- [Discord](https://discord.com/)
- [Docker Engine](https://www.docker.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Dropbox](https://www.dropbox.com/)
- [Element](https://element.io/)
- [Enpass](https://www.enpass.io/)
- [Figma Linux](https://github.com/Figma-Linux/figma-linux)
- [Franz](https://meetfranz.com/)
- [GitHub Desktop](https://desktop.github.com/)
- [GitKraken](https://www.gitkraken.com/invite/ieih1QR3)
- [Gitter](https://gitter.im/)
- [Google Chrome](https://www.google.com/chrome/)
- [Google Earth Pro](https://www.google.com/earth/versions/)
- [Heroic Games Launcher](https://heroicgameslauncher.com/)
- [Insomnia](https://insomnia.rest/)
- [IRCCloud Desktop](https://www.irccloud.com/)
- [Jami](https://jami.net/)
- [Jellyfin](https://jellyfin.org/)
- [Keybase](https://keybase.io/)
- [Mailspring](https://getmailspring.com/)
- [Microsoft Edge](https://www.microsoft.com/edge)
- [ocenaudio](https://www.ocenaudio.com/)
- [ONLYOFFICE Desktop Editors](https://www.onlyoffice.com/en/desktop.aspx)
- [Opera](https://www.opera.com/)
- [Plex](https://www.plex.tv/)
- [PowerShell](https://docs.microsoft.com/powershell/)
- [Rambox](https://rambox.app/)
- [Rclone](https://rclone.org/)
- [Raspberry Pi Imager](https://github.com/raspberrypi/rpi-imager)
- [Signal](https://signal.org/)
- [Simplenote](https://simplenote.com/)
- [Skype](https://www.skype.com/)
- [Slack](https://slack.com/)
- [Spotify](https://www.spotify.com/)
- [Sublime Merge](https://www.sublimemerge.com/)
- [Sublime Text](https://www.sublimetext.com/)
- [Syncthing](https://syncthing.net/)
- [Microsoft Teams](https://www.microsoft.com/microsoft-teams/group-chat-software)
- [Vivaldi](https://vivaldi.com/)
- [Wavebox](https://wavebox.io/)
- [WeeChat](https://weechat.org/)
- [Wire](https://wire.com/)
- [Zoom](https://zoom.us/)
