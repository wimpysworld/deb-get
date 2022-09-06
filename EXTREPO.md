# The base URL
It is the URL that is used as base to build the URLs to download all the files from the external repository. It must be in a format so that the following gives the URLs of the manifest file and the package definition files:

```bash
${REPO_URL}/manifest
${REPO_URL}/packages/${APP}
```

The URL can point to any HTTP(S) server, as long as the URLs above correctly provide the desired files. Ideally, to prevent unnecessary traffic and slow repository updates, the server should support the `ETag`/`If-None-Match` HTTP headers, or at least `Last-Modified`/`If-Modified-Since`.

As an example, the base URL of an external repository hosted in a GitHub repository would be:

```
https://raw.githubusercontent.com/<user-organization>/<repository>/<branch>
```

# The manifest file

This is the most important file in an external repository, since without it nothing else would work. Its first line must always contain the base URL of the repository. The following lines must contain the names of the package definition files present in the `packages` path, one per line, ideally sorted and without repetition. They can also be commented (starting with `#`), in which case the package definition file is considered deprecated. **No file declared in the manifest should be missing, or else the caching mechanism will break**.

# The package definition files

For information on how to create a package definition file, head to [CONTRIBUTING](CONTRIBUTING.md#creating-the-package-definition-file).
