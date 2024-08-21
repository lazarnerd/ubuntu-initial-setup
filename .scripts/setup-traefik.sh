SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ROOT_DIR="${SCRIPT_DIR}/.."
source "${ROOT_DIR}/.env"

docker network create proxy

mkdir -p "${HOME}/services"
cp -R "${ROOT_DIR}/traefik" "${HOME}/services"
cp "${ROOT_DIR}/.env" "${HOME}/services/traefik"

