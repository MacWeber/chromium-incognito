#!/bin/sh

# Allows to start chromium as incognito with a different cookies jar for each
# new window.

# Create temporary folder for incognito profile
temp_profile=$(mktemp -d)

# Optional: prepare the settings folder to keep bookmarks, extensions,
# preferences, etc:
#   cd settings/Default
# - Bookmarks: ln -s ~/.config/chromium/Default/Bookmarks Bookmarks
# - Extension Rules: ln -s ~/.config/chromium/Default/Extension\ Rules Extension\ Rules
# - Extensions: ln -s ~/.config/chromium/Default/Extensions Extensions
# * Avoid annoyances: touch ../First\ Run

# Copy standard shared settings and extensions
cp -r `dirname $0`/settings/* $temp_profile/.
# Start as incognito
chromium --incognito --user-data-dir=$temp_profile --no-proxy-server 
