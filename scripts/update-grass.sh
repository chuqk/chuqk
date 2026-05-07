#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

npx -y cc-grass@latest -o grass.svg

git add grass.svg
if git diff --cached --quiet; then
  exit 0
fi

git commit -m "auto: update grass"
git push
