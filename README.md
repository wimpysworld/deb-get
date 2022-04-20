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

```
antimicrox
balena-etcher-electron
bitwarden
brave-browser
code
deb-get
discord
docker-ce
docker-desktop
dropbox
figma-linux
franz
github-desktop
gitkraken
gitter
google-chrome-stable
google-earth-pro-stable
heroic
insomnia
irccloud-desktop
jellyfin
keybase
mailspring
microsoft-edge-stable
ocenaudio
onlyoffice-desktopeditors
opera-stable
plexmediaserver
powershell
rambox
rpi-imager
signal-desktop
simplenote
skypeforlinux
slack-desktop
spotify-client
sublime-merge
sublime-text
syncthing
teams
vivaldi-stable
wavebox
wire-desktop
zoom
```
