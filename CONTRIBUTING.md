# Updating README.md
**This needs to be done every time the `usage` function is changed**.

To update `README.md`, first install [cog](https://pypi.org/project/cogapp):
```bash
sudo pip3 install cogapp
```

or on a recent Debian-derived distro with an externally-managed python environment

```bash
sudo apt install python3-cogapp
```

(in this case you may want to `alias cog=cogapp`)

Then run:
```bash
cog -r README.md
```
