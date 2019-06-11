#!/usr/bin/env bash
set -euxo pipefail

dest="signiant/docker-azure-centos7-agent"

docker build -t "$dest" .
docker push "$dest"

exit 0

