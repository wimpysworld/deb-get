# Adding Software
## What is acceptable?
This defines what software can be added to the main repository, and therefore the scope of the project in terms of what it is intended for:
* Software **has to be published as a `.deb`**. Build from source, tarballs or other binary releases will not be accepted.
* Software **has to be published authoritatively by the upstream vendor, project or maintainer**. Packages published by unassociated community contributors will not be accepted.
* Software **must be actively maintained**.
* **Only stable/production releases**. Daily/nightly, betas or pre-release versions will not be accepted.
* GitHub Releases and direct downloads **must have a reliable means to dynamically determine the current upstream published version**. Hardcoded versions will be not accepted.
* **Packages that install directly from the official Debian or Ubuntu apt archives will not be accepted**.
* **Packages that replace components in the hardware enablement stack (HWE) such as the Linux kernel and Mesa will not be accepted**.

If you found a package that fits the criteria above, have checked that it does not already have a pending request and has not previously been declined, please [open an issue](../../../issues/new) following the template for requesting a new app.

## Creating the package definition file
**Before [opening a pull request](../../../pulls) to add a new package, make sure an [issue is already open](../../../issues) for it**. **This helps keep things organized**.

**When submitting a PR, do not manually update README.md**. **It will be updated by the maintainers**.

For information on how to create a package definition file, head to [EXTREPO](../EXTREPO.md#the-package-definition-files).

# Updating README.md
**This section is only meant for maintainers**.

**This needs to be done every time a package is added or removed, or the details of a package are changed**.

To update `README.md`, first install [cog](https://pypi.org/project/cogapp):
```bash
sudo pip3 install cogapp
```

Then run:
```bash
cog -r README.md
```
