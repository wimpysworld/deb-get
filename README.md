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
sudo apt install curl
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get
```

Alternatively, you can [download the `.deb` of `deb-get` from the releases page](https://github.com/wimpysworld/deb-get/releases/latest)
and install it manually with

``` bash
sudo apt-get install ./path/to/deb-get_<version>.deb
```

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

deb-get {update | upgrade | show pkg | install pkg | reinstall pkg | remove pkg
        | purge pkg | search pkg | cache | clean | list | prettylist | csvlist | help | version}

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

csvlist
    csv formatted list the packages available via deb-get. Use this with 3rd party wrappers.

cache
    list the contents of the deb-get cache (/var/cache/deb-get)

help
    show this help

version
    show deb-get version
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

The software below can be installed, updated and removed using `deb-get`.

- `deb-get install <packagename>`
- `deb-get update`
- `deb-get upgrade`
- `deb-get remove <packagename>`
- `deb-get purge <packagename>`

<!-- [[[cog
pretty_list = subprocess.check_output(["./deb-get", "prettylist"], encoding="utf-8")
cog.out(pretty_list)
]]] -->
| Source   | Package Name   | Description   |
| :------: | :------------- | :------------ |
| [<img src=".github/debian.png" align="top" width="20" />](https://1password.com/) | `1password` | <i>The easiest way to store and use strong passwords.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/OrangeDrangon/android-messages-desktop/) | `android-messages-desktop` | <i>Run Android Messages as a desktop app.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://antimicrox.github.io/) | `antimicrox` | <i>A graphical program used to map keyboard buttons and mouse controls to a gamepad.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://anydesk.com/) | `anydesk` | <i>Access any device at any time. From anywhere. Always secure and fast.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/TheAssassin/AppImageLauncher) | `appimagelauncher` | <i>A free and open source MIT licensed app that makes your Linux desktop AppImage ready. Integrate AppImages to your application launcher with one click, and manage, update and remove them from there.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://atom.io/) | `atom` | <i>A hackable text editor for the 21st Century.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://launchpad.net/~audio-recorder) | `audio-recorder` | <i>Audio recording app that allows for the recording from various sources such as microphones, a system's sound card, or a web browser, and save it to various possible formats.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) | `azure-cli` | <i>Command-line interface used to create and manage Azure resources.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://docs.microsoft.com/en-us/sql/azure-data-studio/) | `azuredatastudio` | <i>Data management tool for working with SQL Server, Azure SQL DB and SQL DW.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.balena.io/etcher/) | `balena-etcher-electron` | <i>Flash OS images to SD cards & USB drives, safely and easily.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/sharkdp/bat) | `bat` | <i>A 'cat' clone with wings.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/hsbasu/battery-monitor/) | `battery-monitor` | <i>An X-platform utility tool developed on Python, notifies about charging, discharging, and critically low battery state of the battery on laptop.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://beersmith.com/) | `beersmith3` | <i>Home Brewing Software.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://bitwarden.com/) | `bitwarden` | <i>Open Source Password Manager.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.bitwig.com/) | `bitwig-studio` | <i>Modern music production and performance.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/rafaelmardojai/blanket) | `blanket` | <i>Improve focus and increase your productivity by listening to different sounds. Or allows you to fall asleep in a noisy environment.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.blockbench.net/) | `blockbench` | <i>A low-poly 3D model editor</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.bluejeans.com) | `bluejeans-v2` | <i>The secure video conferencing platform that makes you more productive.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ClementTsang/bottom) | `bottom` | <i>Yet another cross-platform graphical process/system monitor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://brave.com/) | `brave-browser` | <i>Browse privately. Search privately. And ditch Big Tech.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://brisqi.com/) | `brisqi` | <i>An offline-first personal Kanban app.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://sindresorhus.com/caprine) | `caprine` | <i>Elegant Facebook Messenger desktop app.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://ibboard.co.uk/cawbird/) | `cawbird` | <i>Twitter client for the Linux desktop.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.influxdata.com/time-series-platform/chronograf/) | `chronograf` | <i>Open source monitoring and visualization UI for the TICK stack.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://code.visualstudio.com/) | `code` | <i>Code editing. Redefined.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://vscodium.com/) | `codium` | <i>Community-driven, freely-licensed binary distribution of Microsoft's Code editor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://tkashkin.github.io/projects/gamehub) | `com.github.tkashkin.gamehub` | <i>Unified library for all your games.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://hluk.github.io/CopyQ/) | `copyq` | <i>An advanced clipboard manager with editing and scripting features.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.codeweavers.com/crossover) | `crossover` | <i>Run your Windows apps on Linux! CrossOver is a Microsoft Windows compatibility layer based on Wine.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://cryptomator.org/) | `cryptomator` | <i>Multi-platform transparent client-side encryption of your files in the cloud.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://dbeaver.io/) | `dbeaver-ce` | <i>Database GUI Client</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://deadbeef.sourceforge.io/) | `deadbeef` | <i>The ultimate music player</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/wimpysworld/deb-get) | `deb-get` | <i>'apt-get' functionality for .debs published in 3rd party repositories or via direct download package.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://delta.chat/) | `deltachat-desktop` | <i>Email-based instant messaging for Desktop.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://discord.com/) | `discord` | <i>A place that makes it easy to talk every day and hang out more often.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.docker.com/) | `docker-ce` | <i>Open source containerization technology for building and containerizing your applications.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.docker.com/products/docker-desktop/) | `docker-desktop` | <i>The fastest way to containerize applications.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.diagrams.net) | `draw.io` | <i>Diagramming and whiteboarding app that wraps the core draw.io editor.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.dropbox.com/) | `dropbox` | <i>Securely share, store and do more with your content.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/bootandy/dust) | `du-dust` | <i>du + rust = dust. Like du but more intuitive.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/muesli/duf) | `duf` | <i>Disk Usage/Free Utility - a better 'df' alternative.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://juzzlin.github.io/DustRacing2D/index.html) | `dustracing2d` | <i>Dust Racing 2D is a traditional top-down car racing game including a level editor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://element.io/) | `element-desktop` | <i>Secure and independent communication, connected via Matrix.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.enpass.io/) | `enpass` | <i>Remember one master password and let Enpass take care of the rest.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://exodus.com/) | `exodus` | <i>Bitcoin & Crypto Wallet.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.expressvpn.com/) | `expressvpn` | <i>Popular VPN software</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/sharkdp/fd) | `fd` | <i>A simple, fast and user-friendly alternative to 'find'.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Figma-Linux/figma-linux) | `figma-linux` | <i>Unofficial Electron-based Figma desktop app for Linux.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.mozilla.org/firefox/enterprise/) | `firefox-esr` | <i> Firefox Extended Support Release.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://flameshot.org/) | `flameshot` | <i>Flameshot is a free and open-source, cross-platform tool to take screenshots with many built-in features to save you time.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://johnfactotum.github.io/foliate/) | `foliate` | <i>A simple and modern eBook viewer for Linux desktops.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://meetfranz.com/) | `franz` | <i>A messaging app for WhatsApp, Facebook Messenger, Slack, Telegram and many many more.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/cboxdoerfer/fsearch) | `fsearch` | <i>Fast file search utility.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/hmlendea/gfn-electron) | `geforcenow-electron` | <i>Desktop client for Nvidia's GeForce NOW game streaming service.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://cli.github.com/) | `gh` | <i>GitHub CLI brings GitHub to your terminal. Free and open source.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/dandavison/delta) | `git-delta` | <i>A syntax-highlighting pager for 'git', 'diff', and 'grep' output.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://desktop.github.com/) | `github-desktop` | <i>Simple collaboration from your desktop.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.gitkraken.com/invite/ieih1QR3) | `gitkraken` | <i>Intuitive Git GUI & powerful Git CLI.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://gitter.im/) | `gitter` | <i>A chat and networking platform to manage and connect communities through messaging, content and discovery.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ankurk91/google-chat-electron) | `google-chat-electron` | <i>An unofficial desktop app for Google Chat.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.google.com/chrome/) | `google-chrome-stable` | <i>Fast, Secure Browser from Google.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.google.com/earth/versions/) | `google-earth-pro-stable` | <i>Explore worldwide satellite imagery and 3D buildings and terrain for hundreds of cities.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/arunsivaramanneo/GPU-Viewer) | `gpu-viewer` | <i>A front-end to glxinfo, vulkaninfo, clinfo and es2_info.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://launchpad.net/grub-customizer) | `grub-customizer` | <i>Grub Customizer is a graphical interface to configure the GRUB2/BURG settings and menuentries</i> |
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
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/JonMagon/KDiskMark) | `kdiskmark` | <i>A simple open-source disk benchmark tool for Linux distros.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://keepassxc.org/) | `keepassxc` | <i>Cross-Platform Password Manager.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://keybase.io/) | `keybase` | <i>End-to-end encryption for things that matter. Secure messaging and file-sharing.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://kopia.io/) | `kopia-ui` | <i>Cross-platform backup tool for Windows, macOS & Linux with fast, incremental backups, client-side end-to-end encryption, compression and data deduplication.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ksnip/ksnip) | `ksnip` | <i>Cross-platform screenshot and annotation tool.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://k8slens.dev/) | `lens` | <i>The way the world runs Kubernetes.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://librewolf.net/) | `librewolf` | <i>An independent fork of Firefox, with the primary goals of privacy, security and user freedom.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Peltoche/lsd) | `lsd` | <i>The next gen 'ls' command.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://ludo.libretro.com/) | `ludo` | <i>A minimalist frontend for emulators.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://lutris.net/) | `lutris` | <i>Open Gaming Platform.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://getmailspring.com/) | `mailspring` | <i>Boost your productivity and send better email with the best mail client.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://mattermost.com/) | `mattermost-desktop` | <i>Open Source platform for developer collaboration.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/trapexit/mergerfs) | `mergerfs` | <i>A featureful union filesystem.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://micro-editor.github.io/) | `micro` | <i>A modern and intuitive terminal-based text editor.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.microsoft.com/edge) | `microsoft-edge-stable` | <i>Fast and secure browser that helps you protect your data and save time and money.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://minbrowser.org) | `min` | <i>A fast, minimal browser.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://sharkwouter.github.io/minigalaxy/) | `minigalaxy` | <i>A simple GOG client for Linux.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://minikube.sigs.k8s.io/) | `minikube` | <i>minikube quickly sets up a local Kubernetes cluster on macOS, Linux, and Windows.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://motrix.app/) | `motrix` | <i>A full-featured download manager.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/SoongNoonien/mpdevil) | `mpdevil` | <i>A simple music browser for MPD.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://agam778.github.io/MS-Office-Electron/) | `ms-office-electron` | <i>A Microsoft Office Online Desktop Client made with Electron.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://mullvad.net/) | `mullvad-vpn` | <i>VPN Service based in Sweden that does not collect user data.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://neo4j.com/) | `neo4j` | <i>The Graph Data Platform for Today's Intelligent Applications.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://neovim.io) | `neovim` | <i>Hyperextensible Vim-based text editor</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://nextcloud.com/) | `nextcloud-desktop` | <i>The self-hosted productivity platform that keeps you in control.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.nomadproject.io/) | `nomad` | <i>Orchestration tool for deploying and managing applications.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://nordvpn.com/) | `nordvpn` | <i>VPN service for speed and security.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://notable.app/) | `notable` | <i>The Markdown-based note-taking app that doesn't suck.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/muesli/obs-cli) | `obs-cli` | <i>OBS-cli is a command-line remote control for OBS.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://obsidian.md/) | `obsidian` | <i>A powerful knowledge base on top of a local folder of plain text Markdown files.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://obsproject.com/) | `obs-studio` | <i>Free and open source software for video recording and live streaming.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.ocenaudio.com/) | `ocenaudio` | <i>Easy, fast and powerful audio editor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.onlyoffice.com/en/desktop.aspx) | `onlyoffice-desktopeditors` | <i>Free desktop office suite for document editing and collaboration.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/openaudible/openaudible) | `openaudible` | <i>A cross-platform desktop application for downloading and managing your Audible audiobooks.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://openrazer.github.io/) | `openrazer-meta` | <i>Open source driver and user-space daemon that allows you to manage Razer peripherals.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://openrgb.org/) | `openrgb` | <i>Open source RGB lighting control that doesn't depend on manufacturer software.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.opera.com/) | `opera-stable` | <i>Faster, safer and smarter than default browsers.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.corifeus.com/onenote) | `p3x-onenote` | <i>A Linux compatible version of OneNote.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://pandoc.org/) | `pandoc` | <i>A universal document converter.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) | `papirus-icon-theme` | <i>A free and open source SVG icon theme for Linux. Papirus weaves a beautiful visual cohesiveness over an ever-growing coverage of icons.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://parsec.app/) | `parsec` | <i>Simple, low-latency game streaming.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://peazip.github.io) | `peazip` | <i>PeaZip is a free file archiver utility and extractor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/HACKERALERT/Picocrypt/) | `picocrypt` | <i>A very small, very simple, yet very secure encryption tool.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.plex.tv/) | `plexmediaserver` | <i>Stream Movies and TV Shows.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/six-ddc/plow) | `plow` | <i>A high-performance HTTP benchmarking tool with real-time web UI and terminal displaying</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://polychromatic.app/) | `polychromatic` | <i>Frontend for OpenRazer that enables Razer devices to control lighting effects and more.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://safing.io/portmaster/) | `portmaster` | <i>Portmaster is a free and open-source application that puts you back in charge over all your computer's network connections.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://docs.microsoft.com/powershell/) | `powershell` | <i>Cross-platform automation and configuration tool/framework and optimized for dealing with structured data.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://proton.me/mail/bridge) | `protonmail-bridge` | <i>Proton Mail Bridge adds end-to-end encryption to popular email apps, including Outlook, Thunderbird, and Apple Mail.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://protonvpn.com/) | `protonvpn` | <i>High-speed Swiss VPN that safeguards your privacy.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://maplemedia.io/apps/) | `pulse-sms` | <i>A desktop client for Pulse SMS</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.qownnotes.org) | `qownnotes` | <i>Free open source plain-text file markdown note-taking with Nextcloud / ownCloud integration.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/quickemu-project/quickemu) | `quickemu` | <i>Quickly create and run optimised Windows, macOS and Linux desktop virtual machines.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/quickemu-project/quickgui) | `quickgui` | <i>A Flutter frontend for Quickemu.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rambox.app/) | `rambox` | <i>Workspace simplifier.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://rclone.org/) | `rclone` | <i>Syncs your files to cloud storage.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.resilio.com/) | `resilio-sync` | <i>Fast, reliable, and simple file sync and share solution, powered by P2P technology</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.retroarch.com/) | `retroarch` | <i>RetroArch is a frontend for emulators, game engines and media players.</i> |
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
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/ransome1/sleek) | `sleek` | <i>Todo manager based on the todo.txt syntax for Linux, free and open-source (FOSS).</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.softmaker.com/en/softmaker-office) | `softmaker-office-2021` | <i>Create impressive documents with ease.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://soundux.rocks) | `soundux` | <i>Soundux is a cross-platform soundboard compatible with both Pulseaudio and Pipewire. It has a universal architecture and works with a variety of applications such as Discord, Steam, and more.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.spotify.com/) | `spotify-client` | <i>Millions of songs and podcasts.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://standardnotes.com) | `standard-notes` | <i>Standard Notes is an end-to-end encrypted note-taking app for digitalists and professionals. Capture your notes, files, and life’s work all in one secure place.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://www.strawberrymusicplayer.org/) | `strawberry` | <i>Music player and music collection organizer aimed at music collectors and audiophiles.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.stremio.com/) | `stremio` | <i>Watch videos, movies, TV series and TV channels instantly.</i> |
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
| [<img src=".github/launchpad.png" align="top" width="20" />](https://tug.org/texworks/) | `texworks` | <i>Lowering the entry barrier to the TeX world.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/Mastermindzh/tidal-hifi) | `tidal-hifi` | <i>Web version of listen.tidal.com running in Wlectron with hifi support thanks to widevine.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.tixati.com/) | `tixati` | <i>A New and Powerful P2P System.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.tribler.org/) | `tribler` | <i>An encrypted torrent client.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://aquasecurity.github.io/trivy/) | `trivy` | <i>A simple and comprehensive vulnerability/misconfiguration/secret scanner for containers and other artifacts.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://typora.io/) | `typora` | <i>A minimal Markdown editor and reader.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://github.com/ubuntu/ubuntu-make/) | `ubuntu-make` | <i>Easy setup of common tools for developers on Ubuntu.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://ulauncher.io/) | `ulauncher` | <i>Application launcher for Linux.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.virtualbox.org/) | `virtualbox-6.1` | <i>VirtualBox 6.1 is a general-purpose full virtualizer for x86 hardware, targeted at server, desktop and embedded use.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://vivaldi.com/) | `vivaldi-stable` | <i>The most feature-packaged, customisable browser.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.hamrick.com/) | `vuescan` | <i>Scanner Software that supports over 6500 scanners.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://wavebox.io/) | `wavebox` | <i>Rethink the Web. Productivity Browser.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://waydro.id/) | `waydroid` | <i>A container-based approach to boot a full Android system on a regular GNU/Linux system like Ubuntu.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://www.webex.com/) | `webex` | <i>Video Conferencing, Cloud Calling and Screen Sharing.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://weechat.org/) | `weechat` | <i>The extensible chat client.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://whalebird.social/) | `whalebird` | <i>A Mastodon, Pleroma, and Misskey client for desktop application.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/eneshecan/whatsapp-for-linux) | `whatsapp-for-linux` | <i>An unofficial WhatsApp desktop application for Linux.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://wire.com/) | `wire-desktop` | <i>Secure collaboration platform.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://xemu.app/) | `xemu` | <i>A free and open-source application that emulates the original Microsoft Xbox game console, enabling people to play their original Xbox games on Windows, macOS, and Linux systems.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://th-ch.github.io/youtube-music/) | `youtube-music` | <i>Open source, cross-platform, unofficial YouTube Music Desktop App with built-in ad blocker and downloader.</i> |
| [<img src=".github/launchpad.png" align="top" width="20" />](https://mikefarah.gitbook.io/yq) | `yq` | <i>A lightweight and portable command-line YAML processor.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://github.com/bvaisvil/zenith) | `zenith` | <i>Sort of like 'top' or 'htop' but with zoom-able charts.</i> |
| [<img src=".github/github.png" align="top" width="20" />](https://www.zettlr.com/) | `zettlr` | <i>A Markdown Editor for the 21st century.</i> |
| [<img src=".github/direct.png" align="top" width="20" />](https://zoom.us/) | `zoom` | <i>Video Conferencing, Cloud Phone, Webinars, Chat, Virtual Events.</i> |
| [<img src=".github/debian.png" align="top" width="20" />](https://www.zotero.org/) | `zotero` | <i>A free, easy-to-use tool to help you collect, organize, cite, and share research.</i> |
<!-- [[[end]]] -->


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

#### GitHub API Rate Limits

`deb-get` uses the [GitHub REST API](https://docs.github.com/en/rest) for some functionality when applications are provided via  GitHub Releases
<img src=".github/github.png" align="top" width="20" />
and for unauthenticated interactions this API is [rate-limited](https://docs.github.com/en/rest/overview/resources-in-the-rest-api#rate-limiting) to 60 calls per hour per source (IP Address). This is vital for keeping the API responsive and available to all users, but can be inconvenient if you have a lot of GitHub releases being handled by `deb-get` (or need to update several times in a short period to test your [contribution](CONTRIBUTING.md)) and will result in, for example, temporary failures to be able to upgrade or install applications via  GitHub Releases
<img src=".github/github.png" align="top" width="20" />.

If you have a GitHub account you can authenticate your GitHub API usage to increase your rate-limit to 5000 requests per hour per authenticated user.  To do this you will need to use a [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). Once you have created a token within GitHub (or identified an appropriate exiting token) you should insert it into an environment variable (`DEBGET_TOKEN`) for `deb-get` to pick up and use to authenticate to the GitHub API.

e.g.:

```
export DEBGET_TOKEN=<my-secret-token>
deb-get update
deb-get upgrade
```



## Adding Software

For information on what is acceptable as suggestion for new packages and instructions on how to open a PR to add a new package, head to [CONTRIBUTING](CONTRIBUTING.md).

### Custom User Includes `/etc/deb-get.d/`

As a more advanced feature, it's now possible to also add your own local customizations or overrides. And supplement the supplied list of official packages. This feature is especially useful to that your local copy of the `deb-get` tool can remain unmodified and always be kept fully up to date. By moving your customizations out in a seperate folder away from the main `deb-get` script.

Typically either because:

1. You are waiting on a pending request for a new software package. Which has been submitted for consideration. But which has not been reviewed / accepted / merged / released yet.
2. Or because you need to add something which does not meet any of the general guidelines in the previous section ^^ detailed above, for whatever various reason(s).

How to use:

* Manually create the folder `/etc/deb-get.d/` if not exist already. By default `deb-get` does not create this folder unless your specific distribution has packaged it that way.
* Can also create any arbitrary nested sub-folder structure within `/etc/deb-get.d/**/*` main folder
* Any files within this tree will be bash sourced in alphabetical order e.g. `. /etc/deb-get.d/01-pending-merge/10-appname1`
* Your user custom `deb_*` functions are then loaded directly after the last `deb_*()` package declarations that officially come with `deb-get`
* Recommendation message printed for any new user added deb_* functions. With a URL link to open a request.
* Warning messages are then also printed for any conflicts detected. For overriden functions (of same name), which then take priority over existing official deb-get apps.

For the last situation, this is most often meant as a helpful reminder to remove your custom declaration once it has been successfully merged upstream into the official `deb-get` tool. So after `deb-get` updates itself you are properly notified. And can avoid keeping lots of duplite functions around.

We really hope that you will enjoy the convenience and flexibility of the new user overrides feature. So please consider in return to open new issues or pull requests (here on github), for any new `deb_*()` functions / packages you create! So that we can share those back with the wider community. Many thanks for your consideration!

## Related projects

  * [App Outlet](https://app-outlet.github.io/): *A Universal linux app store*
  * [bin-get](https://github.com/OhMyMndy/bin-get): *Script to easily and safely fetch binaries from Github Releases/tags*
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
