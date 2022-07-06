<h1 align="center">
  <img src=".github/deb-get-logo.png" alt="deb-get">
  <br />
  <tt>deb-get</tt>
</h1>

<p align="center">
  <b>
    <tt>apt-get</tt> functionality for .debs published in 3rd party repositories or via direct download. It works on Ubuntu and derivative distributions.
    <br />
    Made with 💝 for <img src=".github/ubuntu.png" align="top" width="20" />
  </b>
</p>

## Introduction

`deb-get` makes it easy to install and update `.debs` published in 3rd party
apt repositories or made available via direct download on websites or GitHub
release pages.

## Install

Use `deb-get` to install `deb-get`.

```bash
sudo apt install curl
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
```

Alternatively, you can [download the `.deb` of `deb-get` from the releases page](https://github.com/wimpysworld/deb-get/releases)
and install it manually.

## Usage

Here's an example of how to install Google Chrome.

```bash
deb-get install google-chrome-stable
```

You can see what applications are supported by using `deb-get list` or you
can search the available applications with `deb-get search <app>`.

You can upgrade packages installed using `deb-get` by running
`deb-get upgrade`.

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

help
        show this help

version
        show deb-get version
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

- `deb-get install <packagename>`
- `deb-get update`
- `deb-get upgrade`
- `deb-get remove <packagename>`
- `deb-get purge <packagename>`

| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src=".github/debian.png" align="top" width="20" />](https://1password.com/) | `1password` | <i>The easiest way to store and use strong passwords.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/OrangeDrangon/android-messages-desktop/) | `android-messages-desktop` | <i>Run Android Messages as a desktop app.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://antimicrox.github.io/) | `antimicrox` | <i>A graphical program used to map keyboard buttons and mouse controls to a gamepad.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://anydesk.com/) | `anydesk` | <i>Access any device at any time. From anywhere. Always secure and fast.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://atom.io/) | `atom` | <i>A hackable text editor for the 21st Century.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) | `azure-cli` | <i>Command-line interface used to create and manage Azure resources.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://docs.microsoft.com/en-us/sql/azure-data-studio/) | `azuredatastudio` | <i>Data management tool for working with SQL Server, Azure SQL DB and SQL DW.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.balena.io/etcher/) | `balena-etcher-electron` | <i>Flash OS images to SD cards & USB drives, safely and easily.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/sharkdp/bat) | `bat` | <i>A 'cat' clone with wings.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/hsbasu/battery-monitor/) | `battery-monitor` | <i>An X-platform utility tool developed on Python, notifies about charging, discharging, and critically low battery state of the battery on laptop.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://beersmith.com/) | `beersmith3` | <i>Home Brewing Software.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://bitwarden.com/) | `bitwarden` | <i>Open Source Password Manager.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/rafaelmardojai/blanket) | `blanket` | <i>Improve focus and increase your productivity by listening to different sounds. Or allows you to fall asleep in a noisy environment.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.blockbench.net/) | `blockbench` | <i>A low-poly 3D model editor</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://brave.com/) | `brave-browser` | <i>Browse privately. Search privately. And ditch Big Tech.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://brisqi.com/) | `brisqi` | <i>An offline-first personal Kanban app.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://sindresorhus.com/caprine) | `caprine` | <i>Elegant Facebook Messenger desktop app.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://ibboard.co.uk/cawbird/) | `cawbird` | <i>Twitter client for the Linux desktop.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.influxdata.com/time-series-platform/chronograf/) | `chronograf` | <i>Open source monitoring and visualization UI for the TICK stack.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://code.visualstudio.com/) | `code` | <i>Code editing. Redefined.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://vscodium.com/) | `codium` | <i>Community-driven, freely-licensed binary distribution of Microsoft's Code editor.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://hluk.github.io/CopyQ/) | `copyq` | <i>An advanced clipboard manager with editing and scripting features.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://gitlab.com/corectrl/corectrl) | `corectrl` | <i>A Free and Open Source GNU/Linux application that allows you to control with ease your computer hardware using application profiles.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://dbeaver.io/) | `dbeaver-ce` | <i>Database GUI Client</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://deadbeef.sourceforge.io/) | `deadbeef` | <i>The ultimate music player</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/wimpysworld/deb-get) | `deb-get` | <i>'apt-get' functionality for .debs published in 3rd party repositories or via direct download package.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://discord.com/) | `discord` | <i>A place that makes it easy to talk every day and hang out more often.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.docker.com/) | `docker-ce` | <i>Open source containerization technology for building and containerizing your applications.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.docker.com/products/docker-desktop/) | `docker-desktop` | <i>The fastest way to containerize applications.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.diagrams.net) | `draw.io` | <i>Diagramming and whiteboarding app that wraps the core draw.io editor.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.dropbox.com/) | `dropbox` | <i>Securely share, store and do more with your content.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/muesli/duf) | `duf` | <i>Disk Usage/Free Utility - a better 'df' alternative.</i> |
| [<img src=".github/github.png" align="top" width="20" />](http://juzzlin.github.io/DustRacing2D/index.html) | `dustracing2d` | <i>Dust Racing 2D is a traditional top-down car racing game including a level editor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://element.io/) | `element-desktop` | <i>Secure and independent communication, connected via Matrix.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.enpass.io/) | `enpass` | <i>Remember one master password and let Enpass take care of the rest.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://exodus.com/) | `exodus` | <i>Bitcoin & Crypto Wallet.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.expressvpn.com/) | `expressvpn` | <i>Popular VPN software</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/sharkdp/fd) | `fd` | <i>A simple, fast and user-friendly alternative to 'find'.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Figma-Linux/figma-linux) | `figma-linux` | <i>Unofficial Electron-based Figma desktop app for Linux.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.mozilla.org/firefox/enterprise/) | `firefox-esr` | <i> Firefox Extended Support Release.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://johnfactotum.github.io/foliate/) | `foliate` | <i>A simple and modern eBook viewer for Linux desktops.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://meetfranz.com/) | `franz` | <i>A messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and many many more.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/cboxdoerfer/fsearch) | `fsearch` | <i>Fast file search utility.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://tkashkin.github.io/projects/gamehub) | `gamehub` | <i>Unified library for all your games.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/hmlendea/gfn-electron) | `geforcenow-electron` | <i>Desktop client for Nvidia's GeForce NOW game streaming service.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://cli.github.com/) | `gh` | <i>GitHub CLI brings GitHub to your terminal. Free and open source.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/dandavison/delta) | `git-delta` | <i>A syntax-highlighting pager for 'git', 'diff', and 'grep' output.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://desktop.github.com/) | `github-desktop` | <i>Simple collaboration from your desktop.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.gitkraken.com/invite/ieih1QR3) | `gitkraken` | <i>Intuitive Git GUI & powerful Git CLI.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://gitter.im/) | `gitter` | <i>A chat and networking platform to manage and connect communities through messaging, content and discovery.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ankurk91/google-chat-electron) | `google-chat-electron` | <i>An unofficial desktop app for Google Chat.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.google.com/chrome/) | `google-chrome-stable` | <i>Fast, Secure Browser from Google.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.google.com/earth/versions/) | `google-earth-pro-stable` | <i>Explore worldwide satellite imagery and 3D buildings and terrain for hundreds of cities.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/anchore/grype) | `grype` | <i>A vulnerability scanner for container images and filesystems.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://heroicgameslauncher.com/) | `heroic` | <i>An Open Source GOG and Epic games launcher.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://gohugo.io/) | `hugo` | <i>Open-source static site generator.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://hyper.is/) | `hyper` | <i>A terminal built on web technologies.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/igdmapps/igdm) | `igdm` | <i>Continue your Instagram direct messages from your phone to your desktop.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.influxdata.com/products/influxdb-overview/) | `influxdb` | <i>Scalable datastore for metrics, events, and real-time analytics.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.influxdata.com/products/influxdb-overview/) | `influxdb2` | <i>Scalable datastore for metrics, events, and real-time analytics.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.influxdata.com/products/influxdb-overview/) | `influxdb2-cli` | <i>CLI for managing resources in InfluxDB v2</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://insomnia.rest/) | `insomnia` | <i>The API Design Platform and API Client.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.insynchq.com/) | `insync` | <i>Manage your Google Drive, OneDrive, and Dropbox files straight from your Desktop.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.irccloud.com/) | `irccloud-desktop` | <i>IRCCloud desktop application.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.jabref.org/) | `jabref` | <i>The efficient way to collect, organize & discover.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://jami.net/) | `jami` | <i>Share, freely and privately.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://jellyfin.org/) | `jellyfin` | <i>The Free Software Media System.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://github.com/influxdata/kapacitor) | `kapacitor` | <i>Open source framework for processing, monitoring, and alerting on time series data.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://keepassxc.org/) | `keepassxc` | <i>Cross-Platform Password Manager.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://keybase.io/) | `keybase` | <i>End-to-end encryption for things that matter. Secure messaging and file-sharing.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ksnip/ksnip) | `ksnip` | <i>Cross-platform screenshot and annotation tool.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Peltoche/lsd) | `lsd` | <i>The next gen 'ls' command.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://ludo.libretro.com/) | `ludo` | <i>A minimalist frontend for emulators.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://lutris.net/) | `lutris` | <i>Open Gaming Platform.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://getmailspring.com/) | `mailspring` | <i>Boost your productivity and send better email with the best mail client.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://mattermost.com/) | `mattermost-desktop` | <i>Open Source platform for developer collaboration.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/trapexit/mergerfs) | `mergerfs` | <i>A featureful union filesystem.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://micro-editor.github.io/) | `micro` | <i>A modern and intuitive terminal-based text editor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.microsoft.com/edge) | `microsoft-edge-stable` | <i>Fast and secure browser that helps you protect your data and save time and money.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://sharkwouter.github.io/minigalaxy/) | `minigalaxy` | <i>A simple GOG client for Linux.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://minikube.sigs.k8s.io/) | `minikube` | <i>minikube quickly sets up a local Kubernetes cluster on macOS, Linux, and Windows.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/SoongNoonien/mpdevil) | `mpdevil` | <i>A simple music browser for MPD.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://agam778.github.io/MS-Office-Electron/) | `ms-office-electron` | <i>A Microsoft Office Online Desktop Client made with Electron.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://nextcloud.com/) | `nextcloud-desktop` | <i>The self-hosted productivity platform that keeps you in control.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://nordvpn.com/) | `nordvpn` | <i>VPN service for speed and security.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/muesli/obs-cli) | `obs-cli` | <i>OBS-cli is a command-line remote control for OBS.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://obsidian.md/) | `obsidian` | <i>A powerful knowledge base on top of a local folder of plain text Markdown files.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://obsproject.com/) | `obs-studio` | <i>Free and open source software for video recording and live streaming.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.ocenaudio.com/) | `ocenaudio` | <i>Easy, fast and powerful audio editor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.onlyoffice.com/en/desktop.aspx) | `onlyoffice-desktopeditors` | <i>Free desktop office suite for document editing and collaboration.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://openrazer.github.io/) | `openrazer-meta` | <i>Open source driver and user-space daemon that allows you to manage Razer peripherals.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://openrgb.org/) | `openrgb` | <i>Open source RGB lighting control that doesn't depend on manufacturer software.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.opera.com/) | `opera-stable` | <i>Faster, safer and smarter than default browsers.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.corifeus.com/onenote) | `p3x-onenote` | <i>A Linux compatible version of OneNote.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://pandoc.org/) | `pandoc` | <i>A universal document converter.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://parsec.app/) | `parsec` | <i>Simple, low-latency game streaming.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://peazip.github.io) | `peazip` | <i>PeaZip is a free file archiver utility and extractor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/HACKERALERT/Picocrypt/) | `picocrypt` | <i>A very small, very simple, yet very secure encryption tool.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.plex.tv/) | `plexmediaserver` | <i>Stream Movies and TV Shows.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://polychromatic.app/) | `polychromatic` | <i>Frontend for OpenRazer that enables Razer devices to control lighting effects and more.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://safing.io/portmaster/) | `portmaster` | <i>Portmaster is a free and open-source application that puts you back in charge over all your computer's network connections.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://docs.microsoft.com/powershell/) | `powershell` | <i>Cross-platform automation and configuration tool/framework and optimized for dealing with structured data.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://protonvpn.com/) | `protonvpn` | <i>High-speed Swiss VPN that safeguards your privacy.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/quickemu-project/quickemu) | `quickemu` | <i>Quickly create and run optimised Windows, macOS and Linux desktop virtual machines.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/quickemu-project/quickgui) | `quickgui` | <i>A Flutter frontend for Quickemu.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rambox.app/) | `rambox` | <i>Workspace simplifier.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rclone.org/) | `rclone` | <i>Syncs your files to cloud storage.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.resilio.com/) | `resilio-sync` | <i>Fast, reliable, and simple file sync and share solution, powered by P2P technology</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rocket.chat/) | `rocketchat` | <i>Official Desktop Client for Rocket.Chat.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/raspberrypi/rpi-imager) | `rpi-imager` | <i>Raspberry Pi Imaging Utility.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.rstudio.com/) | `rstudio` | <i>Professional software for data science teams.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rustdesk.com/) | `rustdesk` | <i>Open source virtual / remote desktop infrastructure for everyone!</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.sejda.com/) | `sejda-desktop` | <i>Easy, pleasant and productive PDF editor.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.shutterencoder.com/) | `shutter-encoder` | <i>Professional video, audio and image coversion and encoding tool.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://signal.org/) | `signal-desktop` | <i>Private Messenger.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://simplenote.com/) | `simplenote` | <i>The simplest way to keep notes.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.skype.com/) | `skypeforlinux` | <i>Stay connected with free video calls worldwide.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://slack.com/) | `slack-desktop` | <i>One platform for your team and your work.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.softmaker.com/en/softmaker-office) | `softmaker-office-2021` | <i>Create impressive documents with ease.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.spotify.com/) | `spotify-client` | <i>Millions of songs and podcasts.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.strawberrymusicplayer.org/) | `strawberry` | <i>Music player and music collection organizer aimed at music collectors and audiophiles.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.sublimemerge.com/) | `sublime-merge` | <i>Git Client, done Sublime.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.sublimetext.com/) | `sublime-text` | <i>Text Editing, Done Right.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://surfshark.com/) | `surfshark` | <i>Award-winning VPN service.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/anchore/syft) | `syft` | <i>CLI tool and library for generating a Software Bill of Materials from container images and filesystems.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://syncthing.net/) | `syncthing` | <i>Continuous file synchronization program.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/hakandundar34coding/system-monitoring-center) | `system-monitoring-center` | <i>Multi-featured system monitor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://tailscale.com/) | `tailscale` | <i>Zero config VPN. Works on any device, manages firewall rules for you, and works from anywhere.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.microsoft.com/microsoft-teams/group-chat-software) | `teams` | <i>Team chat and collaboration.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.teamviewer.com/) | `teamviewer` | <i>The Remote Desktop Software.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://github.com/influxdata/telegraf) | `telegraf` | <i>The plugin-driven server agent for collecting & reporting metrics.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.terraform.io/) | `terraform` | <i>Automate Infrastructure on Any Cloud.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Mastermindzh/tidal-hifi) | `tidal-hifi` | <i>Web version of listen.tidal.com running in Wlectron with hifi support thanks to widevine.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.tixati.com/) | `tixati` | <i>A New and Powerful P2P System.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://aquasecurity.github.io/trivy/) | `trivy` | <i>A simple and comprehensive vulnerability/misconfiguration/secret scanner for containers and other artifacts.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/ubuntu/ubuntu-make/) | `ubuntu-make` | <i>Easy setup of common tools for developers on Ubuntu.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://ulauncher.io/) | `ulauncher` | <i>Application launcher for Linux.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://vivaldi.com/) | `vivaldi-stable` | <i>The most feature-packaged, customisable browser.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.hamrick.com/) | `vuescan` | <i>Scanner Software that supports over 6500 scanners.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://wavebox.io/) | `wavebox` | <i>Rethink the Web. Productivity Browser.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.webex.com/) | `webex` | <i>Video Conferencing, Cloud Calling and Screen Sharing.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://weechat.org/) | `weechat` | <i>The extensible chat client.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://whalebird.social/) | `whalebird` | <i>A Mastodon, Pleroma, and Misskey client for desktop application.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/eneshecan/whatsapp-for-linux) | `whatsapp-for-linux` | <i>An unofficial WhatsApp desktop application for Linux.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://wire.com/) | `wire-desktop` | <i>Secure collaboration platform.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://th-ch.github.io/youtube-music/) | `youtube-music` | <i>Open source, cross-platform, unofficial YouTube Music Desktop App with built-in ad blocker and downloader.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://mikefarah.gitbook.io/yq) | `yq` | <i>A lightweight and portable command-line YAML processor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/bvaisvil/zenith) | `zenith` | <i>Sort of like 'top' or 'htop' but with zoom-able charts.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.zettlr.com/) | `zettlr` | <i>A Markdown Editor for the 21st century.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://zoom.us/) | `zoom` | <i>Video Conferencing, Cloud Phone, Webinars, Chat, Virtual Events.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.zotero.org/) | `zotero` | <i>A free, easy-to-use tool to help you collect, organize, cite, and share research.</i> |


**Legend**

The icons above denote how `deb-get` installs/updates the packages.

- <img src=".github/debian.png" align="top" width="20" /> apt repository
- <img src=".github/github.png" align="top" width="20" /> GitHub releases
- <img src=".github/launchpad.png" align="top" width="20" /> Launchpad PPA
- <img src=".github/direct.png" align="top" width="20" /> Website

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
  * [makedeb](https://www.makedeb.org/): *A simplicity-focused packaging tool for Debian archives*

## In the media

  * [The deb-get tool helps Ubuntu (and derivative distro) fans grab extra apps](https://www.gamingonlinux.com/2022/05/the-deb-get-tool-helps-ubuntu-and-derivative-distro-fans-grab-extra-apps/) - **GamingOnLinux**
  * [Deb-Get is ‘Apt-Get’ for 3rd-Party Ubuntu Software](https://www.omgubuntu.co.uk/2022/05/use-deb-get-to-install-popular-linux-apps-on-ubuntu) - **omg! ubuntu!**
  * [How To Install Third-Party Linux Applications with Deb-Get](https://www.tomshardware.com/uk/how-to/install-linux-apps-with-deb-get) - **toms HARDWARE**
  * [How to use deb-get to install third-party software on Ubuntu](https://www.techrepublic.com/article/use-deb-get-install-third-party-software-ubuntu/) - **TechRepublic**
  * [Ubuntu MATE’s Lead Creates a Nifty Tool to Help Install 3rd Party Deb Packages](https://news.itsfoss.com/deb-get-ubuntu/) - **It's FOSS**
  * [deb-get, an "apt-get" to install third-party software on Ubuntu](https://ubunlog.com/en/deb-get-un-apt-get-para-instalar-software-de-terceros-en-ubuntu/) - **ubunlog**
  * [deb-get, a utility for installing third-party software](https://www.linuxadictos.com/en/deb-get-una-utilidad-para-instalar-software-de-terceros.html) - **Linux Addicted**
