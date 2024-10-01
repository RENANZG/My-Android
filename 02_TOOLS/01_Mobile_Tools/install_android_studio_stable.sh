#!/usr/bin/env bash

#######################################################################
# File Name    : install_android_studio_stable.sh
# Description  : This script automates the installation and setup of
#                stable Android Studio AppImage. It downloads the
#                latest stable version from GitHub, installs it,
#                creates necessary directories and symbolic links,
#                provides an updater and a remover script, and runs the #                AppImage in a bubblewrap sandbox for security.
# Dependencies : curl, bubblewrap, rsvg-convert (optional for icon)
# Usage        : • Make the script executable with:
#                  chmod +x install_android_studio_stable.sh
#                • Run the script with:
#                  bash install_android_studio_stable.sh
#                • To update the AppImage, run:
#                  bash $HOME/.local/share/android-studio/update.sh
#                • To remove the AppImage, run:
#                  bash $HOME/.local/share/android-studio/remove.sh
#######################################################################

# Safety check
set -u

# Define variables
APP_NAME="android-studio"
APP_DOWNLOAD_URL="https://api.github.com/repos/zyrouge/android-studio-appimages/releases"
HOME_DIR="$HOME/.local/share/AppImages/$APP_NAME"
EXTRACTED_DIR="$HOME_DIR/squashfs-root"
APPIMAGE_FILE="$HOME_DIR/$APP_NAME.AppImage"
ICON_DIR="$HOME_DIR/icon"
DESKTOP_ENTRY="$HOME/.local/share/applications/$APP_NAME.desktop"

# Bubblewrap command options (adjust as necessary)
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
--ro-bind /etc/ssl /etc/ssl \
--ro-bind /etc/fonts /etc/fonts \
--ro-bind /usr/share/fonts /usr/share/fonts \
--bind /tmp /tmp \
--bind $HOME/.local/share/AppImages/$APP_NAME $HOME/.local/share/AppImages/$APP_NAME \
--bind $HOME/.config $HOME/.config \
--bind $HOME/.cache $HOME/.cache \
--bind /run/user/$(id -u)/dconf /run/user/$(id -u)/dconf \
--bind /run/user/$(id -u)/bus /run/user/$(id -u)/bus \
--setenv DISPLAY :99 \
--setenv XDG_RUNTIME_DIR /run/user/$(id -u) \
--setenv XDG_CONFIG_HOME $HOME/.config/$APP_NAME \
--setenv XDG_DATA_HOME $HOME/.local/share/$APP_NAME \
/bin/sh -c \"$APPIMAGE_FILE\"
"

# Create necessary directories
mkdir -p "$HOME_DIR" "$ICON_DIR" "$HOME/.local/share/applications"
mkdir -p "$HOME/Downloads"
mkdir -p "$HOME/.config/$APP_NAME"
mkdir -p "$HOME/.local/share/$APP_NAME"

# Function to download the latest AppImage
download_appimage() {
    # Get the latest stable AppImage download link using GitHub API
    VERSION_URL=$(curl -sL "$APP_DOWNLOAD_URL" | grep -o '"browser_download_url": *"[^"]*"' | grep -o 'https://[^"]*android-studio-[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*-x86_64.AppImage' | head -n 1)
    if [ -z "$VERSION_URL" ]; then
        echo "Error: Unable to find stable Android Studio AppImage URL."
        exit 1
    fi

    echo "Downloading AppImage from $VERSION_URL..."
    if ! curl -L -o "$APPIMAGE_FILE" "$VERSION_URL"; then
        echo "Error: Failed to download AppImage."
        exit 1
    fi
    chmod a+x "$APPIMAGE_FILE"
}

# Function to extract AppImage
extract_appimage() {
    echo "Extracting AppImage from $APPIMAGE_FILE..."

    if [ ! -f "$APPIMAGE_FILE" ]; then
        echo "Error: AppImage file not found at $APPIMAGE_FILE."
        exit 1
    fi

    if ! "$APPIMAGE_FILE" --appimage-extract > /dev/null 2>&1; then
        echo "Error: Failed to extract AppImage using --appimage-extract."
        exit 1
    fi

    echo "Extraction completed. Moving extracted files to $EXTRACTED_DIR..."

    if [ -d "$HOME/squashfs-root" ]; then
        mv "$HOME/squashfs-root" "$EXTRACTED_DIR"
    fi

    if [ ! -d "$EXTRACTED_DIR" ]; then
        echo "Error: Extraction directory not found at $EXTRACTED_DIR."
        exit 1
    fi
}

# Function to handle extracted files
handle_extracted_files() {
    echo "Handling extracted files..."

    DESKTOP_ENTRY_SRC=$(find "$EXTRACTED_DIR" -name "*.desktop" | head -n 1)
    ICON_FILE=$(find "$EXTRACTED_DIR" -name "*.svg" | head -n 1)

    if [ -z "$DESKTOP_ENTRY_SRC" ]; then
        echo "Error: Desktop entry file not found in the AppImage."
        exit 1
    fi

    if [ -z "$ICON_FILE" ]; then
        echo "Error: Icon file not found in the AppImage."
        exit 1
    fi

    ICON_PATH="$ICON_DIR/$APP_NAME.png"
    if command -v rsvg-convert &> /dev/null; then
        echo "Converting SVG to PNG..."
        if ! rsvg-convert -o "$ICON_PATH" "$ICON_FILE"; then
            echo "Error: Failed to convert SVG to PNG."
            exit 1
        fi
    else
        echo "Warning: rsvg-convert not installed. Using SVG icon."
        ICON_PATH="$ICON_DIR/$APP_NAME.svg"
        cp "$ICON_FILE" "$ICON_PATH"
    fi

    cp "$DESKTOP_ENTRY_SRC" "$DESKTOP_ENTRY"
    if [ ! -f "$DESKTOP_ENTRY" ]; then
        echo "Error: Failed to copy desktop entry."
        exit 1
    fi

    BWRAP_OPTS_SINGLE_LINE=$(echo "$BWRAP_OPTS" | tr -d '\n' | sed 's/ *\\ / /g')
    sed -i "s|^Exec=.*|Exec=$BWRAP_CMD $BWRAP_OPTS_SINGLE_LINE|g" "$DESKTOP_ENTRY"
    sed -i "s|^Icon=.*|Icon=$ICON_PATH|g" "$DESKTOP_ENTRY"

    echo "Desktop entry and icon set up successfully."

    rm -rf "$EXTRACTED_DIR"
}

# Run functions to download, extract, and set up stable Android Studio AppImage
download_appimage
extract_appimage
handle_extracted_files

# Add remover script
cat > "$HOME_DIR/remove.sh" <<EOF
#!/bin/sh
set -e
rm -f \$HOME/Desktop/$APP_NAME.desktop
rm -f \$HOME/.local/share/applications/$APP_NAME.desktop
rm -rf $HOME_DIR
rm -rf \$HOME/.config/$APP_NAME
rm -rf \$HOME/.local/share/$APP_NAME
gtk-update-icon-cache \$HOME_DIR/icon > /dev/null 2>&1
echo "Application removed."
EOF
chmod a+x "$HOME_DIR/remove.sh"

# Add updater script
cat > "$HOME_DIR/update.sh" <<EOF
#!/bin/sh
set -u
APP_NAME="$APP_NAME"
APP_DOWNLOAD_URL="$APP_DOWNLOAD_URL"
HOME_DIR="$HOME_DIR"
version=\$(curl -sL "\$APP_DOWNLOAD_URL" | grep -o '"browser_download_url": *"[^"]*"' | grep -o 'https://[^"]*android-studio-[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*-x86_64.AppImage' | head -n 1)
if [ -n "\$version" ]; then
    mkdir -p "\$HOME_DIR/tmp" && cd "\$HOME_DIR/tmp" || exit 1
    curl -L -o "\$APP_NAME.AppImage" "\$version" || exit 1
    mv "\$APP_NAME.AppImage" "\$HOME_DIR/\$APP_NAME.AppImage"
    chmod a+x "\$HOME_DIR/\$APP_NAME.AppImage" || exit 1
    echo "\$version" > "\$HOME_DIR/version"
    rm -rf "\$HOME_DIR/tmp"
    notify-send "\$APP_NAME is updated!"
    gtk-update-icon-cache "$HOME_DIR/icon" > /dev/null 2>&1
else
    echo "Update not needed!"
fi
EOF
chmod a+x "$HOME_DIR/update.sh"

# Update desktop database and icon cache
update-desktop-database "$HOME/.local/share/applications" > /dev/null 2>&1
gtk-update-icon-cache "$ICON_DIR" > /dev/null 2>&1

# Notify user of completion
echo "Installation of $APP_NAME completed successfully!"
