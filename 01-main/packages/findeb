function deb_findeb() {
    DEFVER=1
    ARCHS_SUPPORTED="amd64"
    get_github_releases "DerLinke/FinDeb"
    if [ "${ACTION}" != "prettylist" ]; then
        # Sucht nach der passenden .deb Datei im GitHub Release für amd64
        URL="$(grep "browser_download_url.*_amd64\.deb\"" "${CACHE_FILE}" | head -n1 | cut -d'"' -f4)"
        # Extrahiert die Versionsnummer aus dem Dateinamen (zwischen _ und _)
        VERSION_PUBLISHED="$(echo "${URL}" | cut -d'_' -f2)"
    fi
    PRETTY_NAME="FinDeb"
    WEBSITE="https://github.com/DerLinke/FinDeb"
    SUMMARY="The Universal Package Manager Wrapper"
}
