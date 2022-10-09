---
author: Martin Wimpress
date: October 6, 2022
footer: deb-get
header: deb-get User Manual
section: 1
title: deb-get
---

# NAME

deb-get - An installation manager for 3rd-Party deb packages

# SYNOPSIS

**deb-get** \[*COMMAND*\]...

```
deb-get {update | upgrade | show <pkg list> | install <pkg list> | reinstall <pkg list> | remove <pkg list>
        | purge <pkg list> | search <regex> | cache | clean | list | prettylist | csvlist
        | fix-installed [--old-apps] | help | version}
```

# DESCRIPTION

deb-get provides a high-level commandline interface for the package management
system to easily install and update packages published in 3rd party apt
repositories or via direct download.

# COMMANDS


**update**
:    update is used to resynchronize the package index files from their sources.

**upgrade**
:    upgrade is used to install the newest versions of all packages currently installed on the system.

**install**
:    install is followed by a list of packages desired for installation or upgrading.

**reinstall**
:    reinstall is followed by a list of packages desired for reinstallation.

**remove**
:    remove is identical to install except that packages are removed instead of installed.

**purge**
:    purge is identical to remove except that packages are removed and purged (any configuration files are deleted too).

**clean**
:    clean clears out the local repository (/var/cache/deb-get) of retrieved package files.

**search**
:    search for the given regex(7) term(s) from the list of available packages supported by deb-get and display matches.

**show**
:    show information about the given packages including their install source and update mechanism.

**list**
:    list the packages available via deb-get.

**prettylist**
:    markdown formatted list the packages available via deb-get. Use this to update README.md

**csvlist**
:    csv formatted list the packages available via deb-get. Use this with 3rd party wrappers.

**cache**
:    list the contents of the deb-get cache (/var/cache/deb-get)

**fix-installed**
:    fix installed packages whose definitions were changed. When --old-apps is provided, transition packages to new format. This command is only intended for internal use.

**help**
:    show this help

**version**
:    show deb-get version



# EXAMPLES

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

1password  
android-messages-desktop  
antimicrox                        
anydesk  
appimagelauncher  
atom  
audio-recorder  
azure-cli  
azuredatastudio  
balena-etcher-electron            
bat                               
battery-monitor  
beersmith3                        
bitwarden                         
bitwig-studio  
blanket  
blockbench  
bluejeans-v2  
bottom                            
brave-browser                     
brisqi                            
caprine  
cawbird  
chronograf  
code                              
codium  
com.github.tkashkin.gamehub  
copyq                             
cosign  
crossover  
cryptomator  
dbeaver-ce  
deadbeef  
deb-get                           
deborah                           
deltachat-desktop  
discord                           
docker-ce                         
docker-desktop                    
draw.io  
dropbox  
du-dust                           
duf                               
dustracing2d  
element-desktop  
enpass  
exodus  
expressvpn  
fd                                
figma-linux  
firefox-esr  
flameshot                         
foliate  
franz  
fsearch                           
geforcenow-electron  
gh                                
git-delta                         
github-desktop  
gitkraken                         
gitter  
google-chat-electron  
google-chrome-stable              
google-cloud-cli  
google-earth-pro-stable  
gpu-viewer  
grype                             
headset                           
helio-workstation  
heroic                            
hugo                              
hyper  
igdm  
influxdb  
influxdb2  
influxdb2-cli  
insomnia  
insync  
irccloud-desktop  
jabref  
jami                              
jellyfin                          
kapacitor  
kdiskmark  
keepassxc  
keybase  
kopia-ui  
ksnip  
lens  
librewolf  
limoji  
lsd                               
ludo  
lutris  
mailspring  
mattermost-desktop  
mergerfs  
micro                             
microsoft-edge-stable             
min  
minigalaxy  
minikube  
motrix  
mpdevil  
ms-office-electron  
mullvad-vpn  
nala                              
nala-legacy  
neo4j  
neovim                            
nextcloud-desktop  
nomad  
nordvpn  
notable  
obs-cli                           
obsidian                          
obs-studio                        
ocenaudio  
onlyoffice-desktopeditors  
openaudible  
openrazer-meta  
openrgb  
opera-stable  
p3x-onenote  
pandoc                            
papirus-icon-theme  
parsec  
peazip  
picocrypt  
plexmediaserver  
plow  
polychromatic  
portmaster  
powershell  
protonmail-bridge  
protonvpn  
pulse-sms  
qownnotes  
quarto  
quickemu                          
quickgui                          
rambox  
rclone                            
resilio-sync  
retroarch  
rocketchat  
rpi-imager                        
rstudio  
rustdesk                          
sejda-desktop  
shutter-encoder                   
signal-desktop  
simplenote  
skypeforlinux  
slack-desktop  
sleek                             
smartgit  
softmaker-office-2021  
soundux  
spotify-client                    
standard-notes  
strawberry  
stremio  
sublime-merge  
sublime-text                      
surfshark  
syft  
syncthing                         
system-monitoring-center          
tabby-terminal                    
tailscale                         
teams  
teams-for-linux  
teamviewer  
telegraf  
terraform  
texworks  
tidal-hifi  
tixati                            
tribler  
trivy                             
typora  
ubuntu-make  
ulauncher                         
vagrant  
virtualbox-6.1  
vivaldi-stable                    
vuescan  
wavebox  
waydroid  
webex  
weechat  
weylus  
whalebird  
whatsapp-for-linux  
wire-desktop                      
wraith-master  
xemu  
youtube-music  
yq                                
zenith  
zettlr  
zoom  
zotero  



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

If you have a GitHub account you can authenticate your GitHub API usage to increase your rate-limit to 5000 requests per hour per authenticated user.  To do this you will need to use a [Personal Access Token (PAT)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). Once you have created a token within GitHub (or identified an appropriate existing token) you should insert it into an environment variable (`DEBGET_TOKEN`) for `deb-get` to pick up and use to authenticate to the GitHub API.

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


# BUGS

Submit bug reports online at:
<https://github.com/wimpysworld/deb-get/issues>

# SEE ALSO

Full sources at: <https://github.com/wimpysworld/deb-get>

deborah(1)
