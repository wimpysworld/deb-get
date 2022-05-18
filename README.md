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

<img src=".github/debian.png" align="top" width="20" /> [1Password](https://1password.com/) (`1password`) - <i>The easiest way to store and use strong passwords.</i><br />
<img src=".github/github.png" align="top" width="20" /> [AntiMicroX](https://antimicrox.github.io/) (`antimicrox`) - <i>A graphical program used to map keyboard buttons and mouse controls to a gamepad.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Atom](https://atom.io/) (`atom`) - <i>A hackable text editor for the 21st Century.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (`azure-cli`) - <i>Command-line interface used to create and manage Azure resources.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/) (`azuredatastudio`) - <i>Data management tool for working with SQL Server, Azure SQL DB and SQL DW.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Etcher](https://www.balena.io/etcher/) (`balena-etcher-electron`) - <i>Flash OS images to SD cards & USB drives, safely and easily.</i><br />
<img src=".github/github.png" align="top" width="20" /> [bat](https://github.com/sharkdp/bat) (`bat`) - <i>A 'cat' clone with wings.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [BeerSmith](https://beersmith.com/) (`beersmith3`) - <i>Home Brewing Software.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Bitwarden](https://bitwarden.com/) (`bitwarden`) - <i>Open Source Password Manager.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Brave](https://brave.com/) (`brave-browser`) - <i>Browse privately. Search privately. And ditch Big Tech.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Caprine](https://sindresorhus.com/caprine) (`caprine`) - <i>Elegant Facebook Messenger desktop app.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Cawbird](https://ibboard.co.uk/cawbird/) (`cawbird`) - <i>Twitter client for the Linux desktop.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Visual Studio Code](https://code.visualstudio.com/) (`code`) - <i>Code editing. Redefined.</i><br />
<img src=".github/github.png" align="top" width="20" /> [VSCodium](https://vscodium.com/) (`codium`) - <i>Community-driven, freely-licensed binary distribution of Microsoft's Code editor.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [DBeaver](https://dbeaver.io/) (`dbeaver-ce`) - <i>Free multi-platform database tool.</i><br />
<img src=".github/github.png" align="top" width="20" /> [deb-get](https://github.com/wimpysworld/deb-get) (`deb-get`) - <i>'apt-get' functionality for .debs published in 3rd party repositories or via direct download package.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Discord](https://discord.com/) (`discord`) - <i>A place that makes it easy to talk every day and hang out more often.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Docker Engine](https://www.docker.com/) (`docker-ce`) - <i>Open source containerization technology for building and containerizing your applications.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Docker Desktop](https://www.docker.com/products/docker-desktop/) (`docker-desktop`) - <i>The fastest way to containerize applications.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Dropbox](https://www.dropbox.com/) (`dropbox`) - <i>Securely share, store and do more with your content.</i><br />
<img src=".github/github.png" align="top" width="20" /> [duf](https://github.com/muesli/duf) (`duf`) - <i>Disk Usage/Free Utility - a better 'df' alternative.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Element](https://element.io/) (`element-desktop`) - <i>Secure and independent communication, connected via Matrix.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Enpass](https://www.enpass.io/) (`enpass`) - <i>Remember one master password and let Enpass take care of the rest.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Exodus](https://exodus.com/) (`exodus`) - <i>Bitcoin & Crypto Wallet.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Expressvpn](https://www.expressvpn.com/) (`expressvpn`) - <i>Popular VPN software</i><br />
<img src=".github/github.png" align="top" width="20" /> [fd](https://github.com/sharkdp/fd) (`fd`) - <i>A simple, fast and user-friendly alternative to 'find'.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Figma Linux](https://github.com/Figma-Linux/figma-linux) (`figma-linux`) - <i>Unofficial Electron-based Figma desktop app for Linux.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Firefox ESR](https://www.mozilla.org/firefox/enterprise/) (`firefox-esr`) - <i> Firefox Extended Support Release.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Franz](https://meetfranz.com/) (`franz`) - <i>A messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and many many more.</i><br />
<img src=".github/github.png" align="top" width="20" /> [GitHub CLI](https://cli.github.com/) (`gh`) - <i>GitHub CLI brings GitHub to your terminal. Free and open source.</i><br />
<img src=".github/github.png" align="top" width="20" /> [git-delta](https://github.com/dandavison/delta) (`git-delta`) - <i>A syntax-highlighting pager for 'git', 'diff', and 'grep' output.</i><br />
<img src=".github/github.png" align="top" width="20" /> [GitHub Desktop](https://desktop.github.com/) (`github-desktop`) - <i>Simple collaboration from your desktop.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [GitKraken](https://www.gitkraken.com/invite/ieih1QR3) (`gitkraken`) - <i>Intuitive Git GUI & powerful Git CLI.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Gitter](https://gitter.im/) (`gitter`) - <i>A chat and networking platform to manage and connect communities through messaging, content and discovery.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Google Chrome](https://www.google.com/chrome/) (`google-chrome-stable`) - <i>Fast, Secure Browser from Google.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Google Earth Pro](https://www.google.com/earth/versions/) (`google-earth-pro-stable`) - <i>Explore worldwide satellite imagery and 3D buildings and terrain for hundreds of cities.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Grype](https://github.com/anchore/grype) (`grype`) - <i>A vulnerability scanner for container images and filesystems.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Heroic Games Launcher](https://heroicgameslauncher.com/) (`heroic`) - <i>An Open Source GOG and Epic games launcher.</i><br />
<img src=".github/github.png" align="top" width="20" /> [IGdm Messenger](https://github.com/igdmapps/igdm) (`igdm`) - <i>Continue your Instagram direct messages from your phone to your desktop.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Insomnia](https://insomnia.rest/) (`insomnia`) - <i>The API Design Platform and API Client.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Insync](https://www.insynchq.com/) (`insync`) - <i>Manage your Google Drive, OneDrive, and Dropbox files straight from your Desktop.</i><br />
<img src=".github/github.png" align="top" width="20" /> [IRCCloud Desktop](https://www.irccloud.com/) (`irccloud-desktop`) - <i>IRCCloud desktop application.</i><br />
<img src=".github/github.png" align="top" width="20" /> [JabRef](https://www.jabref.org/) (`jabref`) - <i>The efficient way to collect, organize & discover.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Jami](https://jami.net/) (`jami`) - <i>Share, freely and privately.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Jellyfin](https://jellyfin.org/) (`jellyfin`) - <i>The Free Software Media System.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [KeePassXC](https://keepassxc.org/) (`keepassxc`) - <i>Cross-Platform Password Manager.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Keybase](https://keybase.io/) (`keybase`) - <i>End-to-end encryption for things that matter. Secure messaging and file-sharing.</i><br />
<img src=".github/github.png" align="top" width="20" /> [LSDeluxe](https://github.com/Peltoche/lsd) (`lsd`) - <i>The next gen 'ls' command.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Ludo](https://ludo.libretro.com/) (`ludo`) - <i>A minimalist frontend for emulators.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Lutris](https://lutris.net/) (`lutris`) - <i>Open Gaming Platform.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Mailspring](https://getmailspring.com/) (`mailspring`) - <i>Boost your productivity and send better email with the best mail client.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Mattermost Desktop](https://mattermost.com/) (`mattermost-desktop`) - <i>Open Source platform for developer collaboration.</i><br />
<img src=".github/github.png" align="top" width="20" /> [micro](https://micro-editor.github.io/) (`micro`) - <i>A modern and intuitive terminal-based text editor.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Edge](https://www.microsoft.com/edge) (`microsoft-edge-stable`) - <i>Fast and secure browser that helps you protect your data and save time and money.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Nextcloud Desktop](https://nextcloud.com/) (`nextcloud-desktop`) - <i>The self-hosted productivity platform that keeps you in control.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Obsidian](https://obsidian.md/) (`obsidian`) - <i>A powerful knowledge base on top of a local folder of plain text Markdown files.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [ocenaudio](https://www.ocenaudio.com/) (`ocenaudio`) - <i>Easy, fast and powerful audio editor.</i><br />
<img src=".github/github.png" align="top" width="20" /> [ONLYOFFICE Desktop Editors](https://www.onlyoffice.com/en/desktop.aspx) (`onlyoffice-desktopeditors`) - <i>Free desktop office suite for document editing and collaboration.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Opera](https://www.opera.com/) (`opera-stable`) - <i>Faster, safer and smarter than default browsers.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Pandoc](https://pandoc.org/) (`pandoc`) - <i>A universal document converter.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Plex](https://www.plex.tv/) (`plexmediaserver`) - <i>Stream Movies and TV Shows.</i><br />
<img src=".github/github.png" align="top" width="20" /> [PowerShell](https://docs.microsoft.com/powershell/) (`powershell`) - <i>Cross-platform automation and configuration tool/framework and optimized for dealing with structured data.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Quickemu](https://github.com/quickemu-project/quickemu) (`quickemu`) - <i>Quickly create and run optimised Windows, macOS and Linux desktop virtual machines.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Quickgui](https://github.com/quickemu-project/quickgui) (`quickgui`) - <i>A Flutter frontend for Quickemu.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Rambox](https://rambox.app/) (`rambox`) - <i>Workspace simplifier.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Rclone](https://rclone.org/) (`rclone`) - <i>Syncs your files to cloud storage.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Rocketchat Desktop](https://rocket.chat/) (`rocketchat`) - <i>Official Desktop Client for Rocket.Chat.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Raspberry Pi Imager](https://github.com/raspberrypi/rpi-imager) (`rpi-imager`) - <i>Raspberry Pi Imaging Utility.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [RStudio](https://www.rstudio.com/) (`rstudio`) - <i>Professional software for data science teams.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Sengi](https://github.com/NicolasConstant/sengi) (`sengi`) - <i>Tweetdeck inspired Mastodon & Pleroma Multi-account Desktop Client.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Signal](https://signal.org/) (`signal-desktop`) - <i>Private Messenger.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Simplenote](https://simplenote.com/) (`simplenote`) - <i>The simplest way to keep notes.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Skype](https://www.skype.com/) (`skypeforlinux`) - <i>Stay connected with free video calls worldwide.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Slack](https://slack.com/) (`slack-desktop`) - <i>One platform for your team and your work.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Spotify](https://www.spotify.com/) (`spotify-client`) - <i>Millions of songs and podcasts.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Merge](https://www.sublimemerge.com/) (`sublime-merge`) - <i>Git Client, done Sublime.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Sublime Text](https://www.sublimetext.com/) (`sublime-text`) - <i>Text Editing, Done Right.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Syft](https://github.com/anchore/syft) (`syft`) - <i>CLI tool and library for generating a Software Bill of Materials from container images and filesystems.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Syncthing](https://syncthing.net/) (`syncthing`) - <i>Continuous file synchronization program.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Tailscale](https://tailscale.com/) (`tailscale`) - <i>Zero config VPN. Works on any device, manages firewall rules for you, and works from anywhere.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Microsoft Teams](https://www.microsoft.com/microsoft-teams/group-chat-software) (`teams`) - <i>Team chat and collaboration.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [TeamViewer](https://www.teamviewer.com/) (`teamviewer`) - <i>The Remote Desktop Software.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Terraform](https://www.terraform.io/) (`terraform`) - <i>Automate Infrastructure on Any Cloud.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Tidal-hifi](https://github.com/Mastermindzh/tidal-hifi) (`tidal-hifi`) - <i>Web version of listen.tidal.com running in Wlectron with hifi support thanks to widevine.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Tixati](https://www.tixati.com/) (`tixati`) - <i>A New and Powerful P2P System.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Trivy](https://aquasecurity.github.io/trivy/) (`trivy`) - <i>A simple and comprehensive vulnerability/misconfiguration/secret scanner for containers and other artifacts.</i><br />
<img src=".github/launchpad.png" align="top" width="20" /> [Ubuntu-Make](https://github.com/ubuntu/ubuntu-make/) (`ubuntu-make`) - <i>Easy setup of common tools for developers on Ubuntu.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Vivaldi](https://vivaldi.com/) (`vivaldi-stable`) - <i>The most feature-packaged, customisable browser.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [VueScan](https://www.hamrick.com/) (`vuescan`) - <i>Scanner Software that supports over 6500 scanners.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Wavebox](https://wavebox.io/) (`wavebox`) - <i>Rethink the Web. Productivity Browser.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Webex](https://www.webex.com/) (`webex`) - <i>Video Conferencing, Cloud Calling and Screen Sharing.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [WeeChat](https://weechat.org/) (`weechat`) - <i>The extensible chat client.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Whalebird](https://whalebird.social/) (`whalebird`) - <i>A Mastodon, Pleroma, and Misskey client for desktop application.</i><br />
<img src=".github/github.png" align="top" width="20" /> [WhatsApp for Linux](https://github.com/eneshecan/whatsapp-for-linux) (`whatsapp-for-linux`) - <i>An unofficial WhatsApp desktop application for Linux.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Wire](https://wire.com/) (`wire-desktop`) - <i>Secure collaboration platform.</i><br />
<img src=".github/github.png" align="top" width="20" /> [Zenith](https://github.com/bvaisvil/zenith) (`zenith`) - <i>Sort of like 'top' or 'htop' but with zoom-able charts.</i><br />
<img src=".github/direct.png" align="top" width="20" /> [Zoom](https://zoom.us/) (`zoom`) - <i>Video Conferencing, Cloud Phone, Webinars, Chat, Virtual Events.</i><br />
<img src=".github/debian.png" align="top" width="20" /> [Zotero](https://www.zotero.org/) (`zotero`) - <i>A free, easy-to-use tool to help you collect, organize, cite, and share research.</i><br />

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

## Related projects

  * [App Outlet](https://app-outlet.github.io/): *A Universal linux app store*
  * [pacstall](https://pacstall.dev/): *The AUR alternative for Ubuntu*
  * [Ubuntu Make](https://github.com/ubuntu/ubuntu-make): *Easy setup of common tools for developers on Ubuntu.*
  * [unsnap](https://github.com/popey/unsnap): *Quickly migrate from using snap packages to flatpaks*
