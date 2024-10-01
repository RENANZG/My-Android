#!/bin/sh

# Android Installation Script
# This script installs essential Android development tools on a Debian-based system.

# Update package lists
sudo apt update

# Install ADB, Fastboot, and libsparse-utils
sudo apt install -y adb fastboot android-sdk-libsparse-utils

# Verify and install the Android platform
# Specify the desired platform version (modify as needed)
PLATFORM_VERSION=23  # Change this to your desired platform version

# Install the specified Android platform package
if sudo apt install -y android-sdk-platform${PLATFORM_VERSION}; then
    echo "Successfully installed Android platform version ${PLATFORM_VERSION}."
else
    echo "Failed to install Android platform version ${PLATFORM_VERSION}."
    exit 1
fi

echo "Android tools installation completed successfully."
