
#!/usr/bin/env bash
set -euo pipefail

REPO="yo48koki2009-ux/aicj-linux-app"
VERSION="1.0.0"

echo "SEARCHING for AICJ をインストールします"

case "$(dpkg --print-architecture)" in
  amd64) ARCH="amd64" ;;
  arm64) ARCH="arm64" ;;
  *)
    echo "このCPUには対応していません"
    exit 1
    ;;
esac

FILE="aicj-searching_${VERSION}_${ARCH}.deb"
URL="https://github.com/${REPO}/releases/download/v${VERSION}/${FILE}"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "アプリをダウンロードしています..."
curl -fL --retry 3 \
  "$URL" -o "$TMP_DIR/$FILE"

echo "パッケージを確認しています..."
dpkg-deb --info "$TMP_DIR/$FILE" >/dev/null

echo "インストールしています..."
sudo apt-get install -y "$TMP_DIR/$FILE"

echo "インストール完了！"
echo "Chromebookのアプリ一覧から起動できます。"
