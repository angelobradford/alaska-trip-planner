#!/bin/sh
# Wraps app.html (the artifact source) into a standalone index.html you can open in any browser,
# host on GitHub Pages, and add to an iPhone home screen. Data saves on that device only.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '<meta name="apple-mobile-web-app-capable" content="yes"><meta name="mobile-web-app-capable" content="yes">'
  printf '<meta name="apple-mobile-web-app-title" content="Kitchen"><meta name="apple-mobile-web-app-status-bar-style" content="default">'
  printf '<meta name="theme-color" content="#1f6b4a"><link rel="apple-touch-icon" href="apple-touch-icon.png"><link rel="manifest" href="manifest.webmanifest">'
  printf '<style>[hidden]{display:none!important}body{margin:0}:root{padding-top:env(safe-area-inset-top);padding-bottom:env(safe-area-inset-bottom)}</style></head><body>\n'
  sed "s|<title>Bradford Family Kitchen</title>|<title>Family Kitchen</title>|" app.html
  printf '\n</body></html>\n'
} > index.html
