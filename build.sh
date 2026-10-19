#!/usr/bin/env bash
# Genera preview/app.html (la web como página independiente) a partir de index.html,
# para que la vista previa del iPhone la cargue en su iframe.
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > preview/app.html
