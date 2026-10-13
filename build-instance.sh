#!/bin/sh
# Builds dist/routed-pipes-pack.zip, the Prism instance friends import once.
set -eu
cd "$(dirname "$0")"

mc=$(sed -n 's/^minecraft = "\(.*\)"$/\1/p' pack.toml)
neoforge=$(sed -n 's/^neoforge = "\(.*\)"$/\1/p' pack.toml)

rm -rf dist
mkdir -p dist/routed-pipes-pack/minecraft

curl -sfL -o dist/routed-pipes-pack/minecraft/packwiz-installer-bootstrap.jar \
  https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar

cp instance/instance.cfg dist/routed-pipes-pack/
cat > dist/routed-pipes-pack/mmc-pack.json <<JSON
{
    "components": [
        {"uid": "net.minecraft", "version": "$mc", "important": true},
        {"uid": "net.neoforged", "version": "$neoforge"}
    ],
    "formatVersion": 1
}
JSON

(cd dist/routed-pipes-pack && zip -qr ../routed-pipes-pack.zip .)
echo "built dist/routed-pipes-pack.zip for minecraft $mc, neoforge $neoforge"
