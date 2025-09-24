#!/bin/ksh
# setup_images.ksh — scaffold images folder and placeholder assets for 10 Labs Rentals
# Usage: ksh setup_images.ksh

set -e

IMAGES_DIR="images"

echo "[setup] Ensuring $IMAGES_DIR directory exists..."
if [ ! -d "$IMAGES_DIR" ]; then
  mkdir "$IMAGES_DIR"
  echo "[setup] Created $IMAGES_DIR/"
else
  echo "[setup] $IMAGES_DIR/ already exists"
fi

create_file() {
  filePath="$1"
  content="$2"
  if [ ! -f "$filePath" ]; then
    printf "%s" "$content" > "$filePath"
    echo "[setup] Created $filePath"
  else
    echo "[setup] Skipped existing $filePath"
  fi
}

# Minimal SVG templates (single-line to preserve portability)
SVG_BG='<?xml version="1.0" encoding="UTF-8"?><svg xmlns="http://www.w3.org/2000/svg" width="1200" height="800" viewBox="0 0 1200 800"><defs><linearGradient id="bg" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#f2f4f6"/><stop offset="100%" stop-color="#fbfbfa"/></linearGradient></defs><rect width="1200" height="800" fill="url(#bg)"/><rect x="120" y="120" width="960" height="560" fill="#ffffff" stroke="#e6e9ee" stroke-width="3"/></svg>'

AVATAR1='<?xml version="1.0" encoding="UTF-8"?><svg xmlns="http://www.w3.org/2000/svg" width="240" height="240" viewBox="0 0 240 240"><defs><linearGradient id="bg" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#f2f4f6"/><stop offset="100%" stop-color="#fbfbfa"/></linearGradient></defs><rect width="240" height="240" fill="url(#bg)"/><circle cx="120" cy="90" r="46" fill="#c79a2b" opacity="0.8"/><rect x="58" y="146" width="124" height="60" rx="30" fill="#0b2340" opacity="0.8"/></svg>'

AVATAR2='<?xml version="1.0" encoding="UTF-8"?><svg xmlns="http://www.w3.org/2000/svg" width="240" height="240" viewBox="0 0 240 240"><defs><linearGradient id="bg" x1="0" y1="0" x2="1" y2="1"><stop offset="0%" stop-color="#f2f4f6"/><stop offset="100%" stop-color="#fbfbfa"/></linearGradient></defs><rect width="240" height="240" fill="url(#bg)"/><circle cx="120" cy="88" r="44" fill="#0b2340" opacity="0.9"/><rect x="56" y="146" width="128" height="62" rx="31" fill="#c79a2b" opacity="0.9"/></svg>'

create_file "$IMAGES_DIR/property-1.svg" "$SVG_BG"
create_file "$IMAGES_DIR/property-2.svg" "$SVG_BG"
create_file "$IMAGES_DIR/property-3.svg" "$SVG_BG"
create_file "$IMAGES_DIR/avatar-1.svg" "$AVATAR1"
create_file "$IMAGES_DIR/avatar-2.svg" "$AVATAR2"

if [ ! -f "$IMAGES_DIR/README.txt" ]; then
  cat > "$IMAGES_DIR/README.txt" <<'EOF'
Placeholders
------------
This folder contains image placeholders used throughout the demo site.

Replace these files with real images while keeping the same filenames, or update the HTML to point to your new assets.

Included files:
 - property-1.svg
 - property-2.svg
 - property-3.svg
 - avatar-1.svg
 - avatar-2.svg
EOF
  echo "[setup] Created images/README.txt"
else
  echo "[setup] Skipped existing images/README.txt"
fi

echo "[setup] Done. Replace SVGs with your images (same filenames) or update HTML src paths."


