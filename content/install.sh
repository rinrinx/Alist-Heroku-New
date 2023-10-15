set -e
DIR_TMP="$(mktemp -d)"

# Install spaek
wget -O - https://github.com/alist-org/alist/releases/download/v3.28.0/alist-linux-amd64.tar.gz | tar -zxf - -C ${DIR_TMP}
install -m 755 ${DIR_TMP}/alist /usr/bin/

rm -rf ${DIR_TMP}
