#!/bin/bash

ENTRY_REPO_URL="https://raw.githubusercontent.com/dan-sarracayo/entry/refs/heads/main";
ENTRY_SCRIPT_URL="$ENTRY_REPO_URL/entry";
ENTRY_CONFIG_URL="$ENTRY_REPO_URL/entry.config";

LOCAL_BIN="$HOME/.local/bin";
LOCAL_CONFIG="$HOME/.config";

# Check/create dir.
function checkdir {
	if [ ! -d "$1" ]; then
		read -p "[info] create a $1 directory? (y)Yes/(n)No/:- " choice;
		if [ $choice == "y" ]; then
			mkdir -p "$1";
		else
			echo "[info] cancelling...";
			exit;
		fi
	else
		echo "[info] $1 detected.";
	fi
}

echo "[info] installing entry...";

# Install script.
checkdir "$LOCAL_BIN";
wget $ENTRY_SCRIPT_URL -q -O "$LOCAL_BIN/entry";
echo "[info] installed script.";

# Install config.
checkdir "$LOCAL_CONFIG";
wget $ENTRY_CONFIG_URL -q -O "$LOCAL_CONFIG/entry.config";
echo "[info] installed config.";

echo "[info] done."

