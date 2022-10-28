DEFVER=1
get_github_releases "https://api.github.com/repos/jgraph/drawio-desktop/releases/latest"
if [ "${ACTION}" != "prettylist" ]; then
    URL="$(grep "browser_download_url.*\.deb\"" "${CACHE_DIR}/${APP}.json" | head -n1 | cut -d'"' -f4)"
    VERSION_PUBLISHED="$(echo "${URL}" | cut -d'/' -f8 | tr -d v)"
fi
PRETTY_NAME="draw.io"
WEBSITE="https://www.diagrams.net"
SUMMARY="Diagramming and whiteboarding app that wraps the core draw.io editor."
