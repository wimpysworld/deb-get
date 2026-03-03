DEFVER=1
get_github_releases "jgraph/drawio-desktop" "latest"
if [ "${ACTION}" != "prettylist" ]; then
    URL=$(grep -m 1 "browser_download_url.*\.deb\"" "${CACHE_FILE}" | cut -d'"' -f4)
    VERSION_PUBLISHED=$(echo "${URL}" | cut -d'/' -f8 | tr -d v)
fi
PRETTY_NAME="draw.io"
WEBSITE="https://www.diagrams.net"
SUMMARY="Diagramming and whiteboarding app that wraps the core draw.io editor."
