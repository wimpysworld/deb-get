# Hacktoberfest 2022 mini-event

We're running a Hacktoberfest 🎃 mini-event. The idea is simple. Land
documentation 📝 in projects that `deb-get` already supports that explain how
users of Debian and Ubuntu based distros can install and update the packages
published by those projects.

We'll use this document to provide and template for submitting pull requests and
tracking which pull requests were successfully merged ✅

## Process

This is the process for submitting a documentation change to a GitHub project.
That said, landing documentation for `deb-get` in any project will also be
appreciated and acknowledged by this mini-event.

 - Fork the project you want to contribute to
 - Submit a change to the appropriate documentation, usually `README.md`
   - Changes to wikis will also be accepted here!
 - Submit a pull-request to the project and reference our [mini-event activity tracker](https://github.com/wimpysworld/deb-get/issues/579)
 - When the project merges your documentation change, fork this deb-get repository
 - Submit a pull-request to this document, adding a link to the merged pull request

### Template documentation change

Here's a template for the documentation change to submit to your chosen
project(s), make sure you change `<project>` and `<packagename>` accordingly in
your pull requests.

```markdown
## Debian and Ubuntu based distros

Users of Debian and Ubuntu based distros can also install and
update the `.deb` packages we publish in our GitHub releases page using [deb-get](https://github.com/wimpysworld/deb-get).

First install `deb-get` using these commands in a terminal:

    sudo apt install curl
    curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

Then install <project> using the following command in terminal:

    deb-get install <package-name>

Once <package-name> is installed it can be kept up to date using:

    deb-get update
    deb-get upgrade
```

### Applicable Projects

These projects are hosted on GitHub and are already supported by `deb-get`.
They're good candidates for this mini-event, but do check the projects pull
requests and our [mini-event activity tracker](https://github.com/wimpysworld/deb-get/issues/579) to make sure someone else hasn't already beaten you to it 😄

  - [X] <--  these already have PRs awaiting approval

- [ ]  https://github.com/OrangeDrangon/android-messages-desktop/
- [ ]   https://antimicrox.github.io/
- [ ]   https://github.com/TheAssassin/AppImageLauncher
- [X]   https://docs.microsoft.com/en-us/sql/azure-data-studio/
- [ ]   https://www.balena.io/etcher/
- [ ]   https://github.com/sharkdp/bat
- [ ]   https://github.com/hsbasu/battery-monitor/
- [ ]   https://bitwarden.com/
- [ ]   https://www.blockbench.net/
- [ ]   https://github.com/ClementTsang/bottom
- [ ]   https://brisqi.com/
- [ ]   https://sindresorhus.com/caprine
- [ ]   https://vscodium.com/
- [ ]   https://tkashkin.github.io/projects/gamehub
- [ ]   https://github.com/sigstore/cosign
- [ ]   https://github.com/wimpysworld/deb-get
- [ ]   https://github.com/ymauray/deborah/
- [ ]   https://www.diagrams.net
- [X]   https://github.com/bootandy/dust
- [ ]   https://github.com/muesli/duf
- [ ]   https://juzzlin.github.io/DustRacing2D/index.html
- [ ]   https://github.com/sharkdp/fd
- [ ]   https://github.com/Figma-Linux/figma-linux
- [ ]   https://flameshot.org/
- [ ]   https://meetfranz.com/
- [ ]   https://github.com/hmlendea/gfn-electron
- [ ]   https://cli.github.com/
- [ ]   https://github.com/dandavison/delta
- [X]   https://desktop.github.com/
- [ ]   https://github.com/ankurk91/google-chat-electron
- [ ]   https://github.com/anchore/grype
- [ ]   https://heroicgameslauncher.com/
- [X]   https://gohugo.io/
- [ ]   https://hyper.is/
- [ ]   https://github.com/igdmapps/igdm
- [ ]   https://insomnia.rest/
- [ ]   https://www.irccloud.com/
- [ ]   https://www.jabref.org/
- [ ]   https://github.com/ksnip/ksnip
- [ ]   https://github.com/GEROGIANNIS/Limoji
- [ ]   https://github.com/Peltoche/lsd
- [ ]   https://ludo.libretro.com/
- [ ]   https://getmailspring.com/
- [ ]   https://mattermost.com/
- [ ]   https://github.com/trapexit/mergerfs
- [ ]   https://micro-editor.github.io/
- [ ]   https://minbrowser.org
- [ ]   https://sharkwouter.github.io/minigalaxy/
- [ ]   https://minikube.sigs.k8s.io/
- [ ]   https://motrix.app/
- [ ]   https://github.com/SoongNoonien/mpdevil
- [ ]   https://agam778.github.io/MS-Office-Electron/
- [ ]   https://mullvad.net/
- [ ]   https://neovim.io/
- [ ]   https://notable.app/
- [ ]   https://github.com/muesli/obs-cli
- [ ]   https://obsidian.md/
- [ ]   https://www.onlyoffice.com/en/desktop.aspx
- [ ]   https://github.com/openaudible/openaudible
- [ ]   https://www.corifeus.com/onenote
- [ ]   https://pandoc.org/
- [ ]   https://peazip.github.io
- [ ]   https://github.com/HACKERALERT/Picocrypt/
- [ ]   https://github.com/six-ddc/plow
- [ ]   https://docs.microsoft.com/powershell/
- [ ]   https://proton.me/mail/bridge
- [ ]   https://maplemedia.io/apps/
- [ ]   https://quarto.org/
- [ ]   https://rambox.app/
- [ ]   https://rclone.org/
- [ ]   https://rocket.chat/
- [ ]   https://github.com/raspberrypi/rpi-imager
- [ ]   https://rustdesk.com/
- [ ]   https://simplenote.com/
- [ ]   https://github.com/ransome1/sleek
- [ ]   https://soundux.rocks
- [ ]   https://standardnotes.com
- [ ]   https://github.com/anchore/syft
- [ ]   https://github.com/hakandundar34coding/system-monitoring-center
- [ ]   https://tabby.sh/
- [ ]   https://github.com/IsmaelMartinez/teams-for-linux
- [ ]   https://github.com/Mastermindzh/tidal-hifi
- [ ]   https://www.tribler.org/
- [ ]   https://aquasecurity.github.io/trivy/
- [ ]   https://github.com/H-M-H/Weylus
- [ ]   https://whalebird.social/
- [ ]   https://github.com/eneshecan/whatsapp-for-linux
- [ ]   https://github.com/serebit/wraith-master
- [ ]   https://th-ch.github.io/youtube-music/
- [X]   https://github.com/bvaisvil/zenith
- [X]   https://www.zettlr.com/

## Merged pull requests

As your pull requests get merged in the upstream projects, add a link to the
pull request below so we can track the changes in our Hacktoberfest mini-event
and awards your magic Internet points 🪄 to Hacktoberfest 🎃

* [du-dust](https://github.com/bootandy/dust/pull/271)
