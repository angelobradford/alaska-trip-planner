#!/bin/sh
# Wraps app.html (the artifact source) into a standalone index.html you can open in any browser or host on GitHub Pages.
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>[hidden]{display:none!important}body{margin:0}</style></head><body>\n'; cat app.html; printf '\n</body></html>\n'; } > index.html
