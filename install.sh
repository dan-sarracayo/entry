#!/bin/bash

ENTRY_REPO_URL="";
ENTRY_SCRIPT_URL="";
ENTRY_CONFIG_URL="";

# Install script.
if [ ! -d "$HOME/.local/bin" ]; then
	read -p "Create a ~/.local/bin directory? (y)Yes/(n)No/:- " choice;
	if [ $choice == "y" ]; then
		mkdir -p "$HOME/.local/bin";
	else
			echo "Cancelling...";
			exit;
	fi

	wget $ENTRY_SCRIPT_URL ~/.local/bin/;
fi

# Install config.
if [ ! -d "$HOME/.config" ]; then 
	read -p "Create a ~/.config directory? (y)Yes/(n)No/:- " choice;
	if [ $choice == "y" ]; then
		mkdir -p "$HOME/.config";
	else
			echo "Cancelling...";
			exit;
	fi
	
	wget $ENTRY_CONFIG_URL ~/.local/bin/;
fi
