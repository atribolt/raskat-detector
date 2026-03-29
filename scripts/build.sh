#!/bin/bash -e

if ! npm --version >/dev/null 2>&1 ; then
  echo "npm is required" >&2
  exit 1
fi

if ! npx --version >/dev/null 2>&1 ; then
  echo "npx is required" >&2
  exit 1
fi

SRC=$(realpath $(dirname "$0")/..)
TARGET_DIR="${TARGET_DIR}"
BUILD_DIR="${BUILD_DIR}"

test -n "${TRAGET_DIR}" || TARGET_DIR="${SRC}/dist"
test -n "${BUILD_DIR}" || BUILD_DIR="${SRC}/build"

mkdir -p "${TARGET_DIR}" "${BUILD_DIR}"

pushd "${BUILD_DIR}"
npm install gramax-cli

npx gramax-cli build -s "${SRC}" -d "${TARGET_DIR}"
echo "WEB page installed to: ${TARGET_DIR}"

popd
