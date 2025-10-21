DEFVER=1
get_github_releases "jgraph/drawio-desktop" "latest"
if [ "${ACTION}" != "prettylist" ]; then
    URL=$(grep -m 1 "browser_download_url.*\.deb\"" "${CACHE_FILE}" | cut -d '"' -f 4)
    VERSION_PUBLISHED=$(cut -d '/' -f 8 <<< "${URL//v/}")
fi
PRETTY_NAME="draw.io"
WEBSITE="https://www.diagrams.net"
SUMMARY="Diagramming and whiteboarding app that wraps the core draw.io editor."
