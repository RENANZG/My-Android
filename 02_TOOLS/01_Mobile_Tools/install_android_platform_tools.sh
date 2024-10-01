#!/usr/bin/env bash

#######################################################################
# File Name    : install_android_platform_tools.sh
# Description  : This script automates the installation and setup of
#                Android Platform Tools. It downloads the latest
#                version from the specified URL, extracts it, and sets
#                up the necessary environment for secure execution.
# Dependencies : curl, bubblewrap, unzip
# Usage        : • Make the script executable with:
#                  chmod +x install_android_platform_tools.sh
#                • Run the script with:
#                  bash install_android_platform_tools.sh
#                • To update the application, run:
#                  bash $HOME/.local/share/android-platform-tools/update.sh
#                • To remove the application, run:
#                  bash $HOME/.local/share/android-platform-tools/remove.sh
#######################################################################

# Safety check
set -u

# Define variables
APP_NAME="android-platform-tools"
APP_DOWNLOAD_URL="https://dl.google.com/android/repository/platform-tools-latest-linux.zip"
HOME_DIR="$HOME/.local/share/$APP_NAME"
BIN_DIR="$HOME_DIR/bin"
BWRAP_CMD="bwrap"
BWRAP_OPTS="
--unshare-all \
--new-session \
--cap-add CAP_SYS_ADMIN \
--dev-bind /dev /dev \
--proc /proc \
--ro-bind /usr /usr \
--ro-bind /bin /bin \
--ro-bind /lib /lib \
--ro-bind /lib64 /lib64 \
--bind /tmp /tmp \
--bind $HOME_DIR $HOME_DIR \
--setenv PATH $BIN_DIR:\$PATH
"

# Create necessary directories
mkdir -p "$HOME_DIR" "$BIN_DIR"

# Function to download the latest Platform Tools zip file
download_platform_tools() {
    echo "Downloading Android Platform Tools from $APP_DOWNLOAD_URL..."
    if ! curl -L -o "$HOME_DIR/platform-tools.zip" "$APP_DOWNLOAD_URL"; then
        echo "Error: Failed to download Android Platform Tools."
        exit 1
    fi
}

# Function to extract Platform Tools
extract_platform_tools() {
    echo "Extracting Android Platform Tools from $HOME_DIR/platform-tools.zip..."

    if [ ! -f "$HOME_DIR/platform-tools.zip" ]; then
        echo "Error: Platform Tools zip file not found."
        exit 1
    fi

    if ! unzip -q "$HOME_DIR/platform-tools.zip" -d "$HOME_DIR"; then
        echo "Error: Failed to extract Platform Tools zip."
        exit 1
    fi

    echo "Extraction completed."
}

# Function to set up executables in the bin directory
setup_executables() {
    echo "Setting up executables..."

    # Move executables to the bin directory
    for exe in "$HOME_DIR/platform-tools/"*; do
        if [[ -x "$exe" ]]; then
            ln -s "$exe" "$BIN_DIR/"
        fi
    done

    echo "Executables setup completed."
}

# Function to create bubblewrap commands
create_bwrap_commands() {
    for exe in "$BIN_DIR/"*; do
        local name=$(basename "$exe")
        echo "Creating wrapper for $name..."
        cat > "$HOME_DIR/$name" <<EOF
#!/bin/bash
exec $BWRAP_CMD $BWRAP_OPTS "$exe" "\$@"
EOF
        chmod +x "$HOME_DIR/$name"
        ln -s "$HOME_DIR/$name" "$BIN_DIR/"
    done
}

# Run functions to download, extract, and set up Android Platform Tools
download_platform_tools
extract_platform_tools
setup_executables
create_bwrap_commands

# Add updater script
cat > "$HOME_DIR/update.sh" <<EOF
#!/bin/sh
set -u
APP_NAME="$APP_NAME"
APP_DOWNLOAD_URL="$APP_DOWNLOAD_URL"
HOME_DIR="$HOME_DIR"
if curl --head --silent "$APP_DOWNLOAD_URL" | grep "200 OK" > /dev/null; then
    echo "Updating $APP_NAME..."
    rm -rf "$HOME_DIR/platform-tools.zip"
    curl -L -o "$HOME_DIR/platform-tools.zip" "$APP_DOWNLOAD_URL" || exit 1
    rm -rf "$HOME_DIR/platform-tools"
    unzip -q "$HOME_DIR/platform-tools.zip" -d "$HOME_DIR"
    echo "$APP_NAME updated successfully."
else
    echo "No update available!"
fi
EOF
chmod a+x "$HOME_DIR/update.sh"

# Add remover script
cat > "$HOME_DIR/remove.sh" <<EOF
#!/bin/sh
set -e
rm -f "$HOME_DIR/update.sh"
rm -f "$HOME_DIR/remove.sh"
rm -rf "$HOME_DIR"
echo "Application removed."
EOF
chmod a+x "$HOME_DIR/remove.sh"

# Notify user of successful installation
echo "Android Platform Tools installation completed successfully."
echo "You can run commands like adb, fastboot, etc. from your terminal."
