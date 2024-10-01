#!/bin/bash

########################################################################
# File Name    : remove_apps.sh
# Description  : This script uninstalls pre-installed Android apps
#                (bloatware) with ADB or creates a list of installed
#                packages in the current script directory.
# Dependencies : ADB ; wget
# Usage        : 1. Go to your phone’s Settings and select About Phone.
#                2. Tap on Version seven times to enable Developer Mode.
#                3. Go back to the main Settings menu, then scroll to
#                   Additional Settings or System, and enter Developer
#                   Options.
#                4. Enable USB Debugging in Developer Options.
#                5. Connect your phone to your PC using a USB cable.
#                6. Open a terminal on your Linux system and make the
#                   script executable with:
#                   chmod +x remove_apps.sh
#                7. Run the script with:
#                   bash remove_apps.sh
#                8. On your phone, a dialog will appear asking for USB
#                   Debugging permission. Tap OK.
#                9. When prompted, choose option 1 to remove apps or
#                   option 2 to create a list of installed apps.
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# List of packages to remove (edit this list as needed)
packages=(
    "com.android.chrome"
    "com.android.hotwordenrollment.okgoogle"
    "com.android.providers.partnerbookmarks"
    "com.android.traceur"
    "com.facebook.appmanager"
    "com.facebook.katana"
    "com.facebook.services"
    "com.facebook.system"
    "com.google.android.apps.chromecast.app"
    "com.google.android.apps.docs"
    "com.google.android.apps.googleassistant"
    "com.google.android.apps.magazines"
    "com.google.android.apps.maps"
    "com.google.android.apps.messaging"
    "com.google.android.apps.nbu.files"
    "com.google.android.apps.nbu.paisa.user"
    "com.google.android.apps.photos"
    "com.google.android.apps.podcasts"
    "com.google.android.apps.restore"
    "com.google.android.apps.subscriptions.red"
    "com.google.android.apps.tachyon"
    "com.google.android.apps.turbo"
    "com.google.android.apps.wellbeing"
    "com.google.android.apps.youtube.music"
    "com.google.android.cellbroadcastreceiver"
    "com.google.android.cellbroadcastservice"
    "com.google.android.contacts"
    "com.google.android.dialer"
    "com.google.android.ext.shared"
    "com.google.android.feedback"
    "com.google.android.gm"
    "com.google.android.gms"
    "com.google.android.gms.location.history"
    "com.google.android.googlequicksearchbox"
    "com.google.android.inputmethod.latin"
    "com.google.android.marvin.talkback"
    "com.google.android.nearby.halfsheet"
    "com.google.android.onetimeinitializer"
    "com.google.android.overlay.gmsconfig.common"
    "com.google.android.overlay.gmsconfig.comms"
    "com.google.android.overlay.gmsconfig.gsa"
    "com.google.android.overlay.modules.ext.services"
    "com.google.android.overlay.modules.modulemetadata.forframework"
    "com.google.android.overlay.modules.permissioncontroller.forframework"
    "com.google.android.partnersetup"
    "com.google.android.printservice.recommendation"
    "com.google.android.projection.gearhead"
    "com.google.android.syncadapters.calendar"
    "com.google.android.syncadapters.contacts"
    "com.google.android.tts"
    "com.google.android.videos"
    "com.google.android.youtube"
    "com.google.ar.lens"
    "com.netflix.mediaclient"
    "com.sukhavati.gotoplaying.bubble.BubbleShooter.mint"
    "in.amazon.mShop.android.shopping"
)

# Function to check if ADB is installed and install it if not present
install_adb() {
    if ! command -v adb &> /dev/null; then
        echo "ADB is not installed. Installing ADB..."
        if [ -f /etc/debian_version ]; then
            sudo apt update && sudo apt install -y adb
        elif [ -f /etc/redhat-release ]; then
            sudo dnf install -y adb
        else
            echo "Unsupported OS. Please install ADB manually."
            exit 1
        fi
    else
        echo "ADB is already installed."
    fi
}

# Ensure ADB is installed
install_adb

# Check for connected devices
adb devices

# Prompt the user to confirm the device is listed
echo "Ensure your device is listed above. If no device is listed, please connect your device and ensure USB Debugging is enabled."
read -p "Press Enter to continue or Ctrl+C to abort..."

# Display options to the user
echo "Choose an option:"
echo "1. Uninstall pre-specified packages (bloatware)."
echo "2. Create a list of installed packages in the current directory."

# Read user's choice
read -p "Enter 1 or 2: " user_choice

if [ "$user_choice" -eq 1 ]; then
    # Iterate through the list and uninstall each package
    for pkg in "${packages[@]}"; do
        echo "Removing $pkg..."
        adb shell pm uninstall --user 0 "$pkg"
    done
    echo "Debloating complete!"

elif [ "$user_choice" -eq 2 ]; then
    # Create a list of installed packages
    output_file="installed_packages.txt"
    echo "Creating a list of installed packages..."
    adb shell pm list packages > "$output_file"
    echo "List of installed packages saved to $output_file."

else
    echo "Invalid option selected. Exiting..."
    exit 1
fi
