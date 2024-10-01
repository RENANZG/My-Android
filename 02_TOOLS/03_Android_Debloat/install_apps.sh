#!/bin/bash

########################################################################
# File Name    : install_apps.sh
# Description  : A script to download and install specified Android
#                packages (customize the list in the script) from
#                F-Droid using ADB and wget. Make sure to enable
#                'Install via USB' in Developer Options, some OEMs may
#                also require a Wi-Fi connection and a SIM card to allow
#                installations via USB.
# Dependencies : USB Debugging enabled, ADB installed, and wget.
# Usage        : 1. On your phone, go to Settings > About Phone.
#                2. Tap on 'Version' seven times to enable Developer
#                   Mode.
#                3. Go back to Settings > Additional Settings/System >
#                   Developer Options.
#                4. Enable 'USB Debugging' in Developer Options.
#                5. Enable 'Install via USB' in Developer Options.
#                6. Connect your phone to your PC using a USB cable.
#                7. Open a terminal on your Linux system, then make the
#                   script executable:
#                   chmod +x install_apps.sh
#                8. Run the script:
#                   bash install_apps.sh
#                9. On your phone, grant USB Debugging permission when
#                   prompted.
#               10. Press Enter in the terminal to continue.
#               11. Android may prompt you to confirm the installation
#                   of each app.
# Author       : Me and the bois
# License      : Free of charge, no warranty
########################################################################

# List of apps to download and install
apps=(
    "org.fdroid.fdroid"
    "dev.patrickgold.florisboard"
    "com.menny.android.anysoftkeyboard"
    "me.zhanghai.android.files"
    "us.spotco.extirpater"
    "io.github.randomfilemaker"
    "net.typeblog.shelter"
    "me.lucky.wasted"
    "de.marmaro.krt.ffupdater"
    "com.kunzisoft.keepass.libre"
    "com.beemdevelopment.aegis"
    "proton.android.pass.fdroid"
    "com.fsck.k9"
    "org.sufficientlysecure.keychain"
    "com.sovworks.edslite"
    "io.github.hasheazy"
)

# Function to check if ADB is installed and install it if necessary
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

# Check ADB device connection
adb devices

# Ask user to confirm that the device is listed
echo "Ensure your device is listed above. If no device is listed, please connect your device and ensure USB Debugging is enabled."
read -p "Press Enter to continue or Ctrl+C to abort..."

# Download the index.xml file using wget
echo "Downloading the index.xml file from F-Droid..."
wget -q -O index.xml https://f-droid.org/repo/index.xml

# Process the index.xml to extract APK URLs
echo "Processing the index.xml to extract APK URLs..."
apk_urls=$(grep -oP '<apkname>\K[^<]+' index.xml | sort -u)

# Loop through each app in the list to find and install the latest APK
for app in "${apps[@]}"; do
    echo "Searching for the latest APK of: $app"
    latest_apk=$(echo "$apk_urls" | grep "$app" | sort -V | tail -n 1)

    if [ -n "$latest_apk" ]; then
        full_apk_url="https://f-droid.org/repo/${latest_apk}"
        filename=$(basename "$full_apk_url")
        echo "Downloading latest APK for $app: $full_apk_url"

        # Download the APK using wget
        wget -q "$full_apk_url"

        if [ $? -ne 0 ]; then
            echo "Failed to download $filename. Skipping..."
            continue
        fi

        echo "Installing $filename on the device..."
        adb install "$filename"

        if [ $? -ne 0 ]; then
            echo "Failed to install $filename. Please check if the device is connected properly."
        else
            echo "$filename installed successfully."
        fi
    else
        echo "No APK found for $app."
    fi
done

echo "APK installation process complete!"
