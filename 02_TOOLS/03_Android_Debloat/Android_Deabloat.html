<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Debloat Android from Linux Using ADB</title>
  <style>
    /* Generic style */
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 5em;
      max-width: 800px;
      /* Limit screen maximum width */
      margin-left: auto;
      margin-right: auto;
    }
    h1, h2, h3, h4, h5, h6 {
      font-weight: bold;
      margin-bottom: 0.5em;
    }
    h1 {
      font-size: 2.5em;
      line-height: 1.2;
    }
    h2 {
      font-size: 2em;
      line-height: 1.3;
    }
    h3 {
      font-size: 1.8em;
      line-height: 1.4;
    }
    p {
      margin: 1em 0;
      text-align: justify;
      /* Justify text for better readability */
    }
    a {
      color: #007bff;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    blockquote {
      margin: 1em 0;
      padding: 0 1em;
      border-left: 3px solid #ccc;
    }
    blockquote cite {
      font-style: italic;
    }
    img {
      max-width: 100%;
      height: auto;
      display: block;
      margin: 1em 0;
    }
    pre {
      background-color: #f8f9fa;
      border: 1px solid #ccc;
      padding: 1em;
      overflow: auto;
      white-space: pre-wrap;
      /* Wrap long lines in preformatted text */
    }
    code {
      font-family: Consolas, Monaco, 'Andale Mono', monospace;
      font-size: 0.9em;
    }
    /* Tables */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 1em;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 0.8em;
    }
    th {
      background-color: #f2f2f2;
    }
    /* Lists */
    ul, ol {
      margin: 1em 0;
      padding-left: 2em;
    }
    /* Miscellaneous */
    sup {
      vertical-align: super;
      font-size: smaller;
    }
    sub {
      vertical-align: sub;
      font-size: smaller;
    }
    @media screen and (max-width: 600px) {
      /* Adjustments for smaller screens */
      body {
        font-size: 16px;
        /* Font size for better readability */
        line-height: 1.5;
        margin: 0.5em;
      }
      h1 {
        font-size: 2em;
      }
      h2 {
        font-size: 1.8em;
      }
      h3 {
        font-size: 1.6em;
      }
      th,
      td {
        padding: 0.6em;
      }
      pre {
        padding: 0.5em;
      }
    }
  </style>
</head>
<body>

  <h1>Debloat Android from Linux Using ADB</h1>

  <p>This guide will help you debloat your Android device using <code>ADB</code>
    tools on Linux without rooting your phone.</p>

  <h2>Step 1: Install ADB Tools on Linux</h2>

  <p>Open your terminal and install the Android ADB tools with the following
    command:
  </p>

  <pre><code>sudo apt-get install android-tools-adb</code></pre>

  <h2>Step 2: Setup Your Android Phone for ADB Debugging</h2>

  <ol>
    <li>Go to your phone’s <b>Settings</b> and select <b>About Phone</b>.</li>
    <li>Tap on <b>Version</b> seven times to enable Developer Mode.</li>
    <li>In <b>Additional Settings</b>, scroll to <b>Developer Options</b> and
      enable <b>USB Debugging</b>.</li>
    <li>Connect your phone to your PC using a USB cable.</li>
    <li>Open a terminal on your PC and enter:</li>
    <pre><code>adb devices</code></pre>
    <li>On your phone, a dialog will appear asking for USB Debugging permission.
      Tap <b>OK</b>.</li>
  </ol>
  
  <p><b>Note</b>: To enable <b>Install via USB</b> in Developer Options, some OEMs may
    also require a Wi-Fi connection and a SIM card to allow installations via
    USB.</p>

  <h2>Step 3: Basic ADB Commands</h2>

  <p>Once your phone is connected, you can use these ADB commands to interact
    with it:</p>

  <table>
    <thead>
      <tr>
        <th>Command</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>adb devices</code></td>
        <td>Shows all connected ADB devices</td>
      </tr>
      <tr>
        <td><code>adb shell</code></td>
        <td>Launches a shell on the device</td>
      </tr>
      <tr>
        <td><code>adb reboot</code></td>
        <td>Reboots the device</td>
      </tr>
      <tr>
        <td><code>adb shell pm list packages</code></td>
        <td>List all installed packages on the device</td>
      </tr>
      <tr>
        <td><code>adb install &quot;filename.apk&quot;</code></td>
        <td>Installs an APK to the device</td>
      </tr>
      <tr>
        <td><code>adb uninstall com.package.name</code></td>
        <td>Uninstalls a package from the device</td>
      </tr>
    </tbody>
  </table>

  <h2>Step 4: Uninstalling Packages Safely</h2>

  <h2>Important Core Packages to Avoid Removing</h2>

  <p>Removing certain system packages can cause severe issues with your phone's
    functionality. Below is a list of core packages for Android, Google,
    Xiaomi MIUI, and Realme (OEM Packages) that you should avoid removing
    during debloat.</p>

  <ul>
    <li>Avoid removing any system-level apps specific to your device manufacturer
      (e.g., <b>MIUI</b>, <b>One UI</b>, <b>EMUI</b> core services). These
      packages often handle system-specific features and hardware controls.</li>
    <li>For example, on Xiaomi phones, avoid removing core MIUI apps like <code>com.miui.systemAdSolution</code>
      (if related to system ads, it may be debatable) or <code>com.miui.securitycenter</code>
      (important for device security and optimization).</li>
    <li><b>Backup First</b>: Always make a backup of your device before debloating,
      especially when using ADB. Remember that you could do a new hard
      reset and return to default configuration.</li>
    <li><b>User Accounts & Sync</b>: Avoid removing any packages related to
      Google accounts or account synchronization, unless you are prepared
      to use alternatives (e.g., de-Googled setups).</li>
    <li><b>Research for packages</b>: consult sites like
      <a href="https://developer.android.com"></a>, <a href="https://forum.xda-developers.com">https://forum.xda-developers.com</a>,
      <a href="https://www.apkmirror.com"></a> etc.</li>
    <li><b>Test Carefully</b>: If unsure, disable the package instead of uninstalling
      it. You can use:
      <pre><code>adb shell pm disable-user --user 0 &lt;package_name&gt;</code></pre>
      This allows you to re-enable it later if needed.
    </li>
  </ul>

  <h3>Core Android Packages</h3>

  <ol>
    <li>
      Core System Packages
    </li>
    <ul>
      <li><code>com.android.systemui</code>: System UI, responsible for the
        status bar, notifications, and system navigation. Removing this
        can render the phone unusable.</li>
      <li><code>com.android.settings</code>: The Settings app, crucial for
        accessing and configuring device settings.</li>
      <li><code>com.android.phone</code>: Handles phone calls and cellular
        network connectivity. Essential for calling and network functions.</li>
      <li><code>com.android.server.telecom</code>: Manages telephony services
        like making and receiving calls.</li>
      <li><code>com.android.providers.media</code>: Media provider, responsible
        for media files (images, music, videos). Removing this can break
        gallery apps and media functionality.</li>
      <li><code>com.android.providers.settings</code>: Stores system and app
        settings. Removing it will lead to boot issues and loss of configurations.</li>
      <li><code>com.android.inputmethod.latin</code>: The default Android keyboard
        (AOSP keyboard). Removing this will require you to have an alternative
        keyboard installed.</li>
      <li><code>com.android.dialer</code>: The default phone dialer app.</li>
      <li><code>com.android.launcher</code> or <code>com.google.android.launcher</code>:
        The home screen and app drawer. Removing this without an alternative
        launcher can prevent you from using the phone's interface.</li>
      <li><code>com.android.provision</code>: Handles the device provisioning
        process when setting up the device.</li>
      <li><code>com.android.settings.intelligence</code>: Provides intelligent
        recommendations and search functionality within the settings app.</li>
    </ul>
    <li>
      System Frameworks
    </li>
    <ul>
      <li><code>com.android.frameworks.base</code>: The main Android framework.
        Removing this package will break the Android system entirely.</li>
      <li><code>com.android.sharedstoragebackup</code>: Handles shared storage
        and app backup. Removing this can affect data backup and restore
        functionality.</li>
      <li><code>com.android.providers.downloads</code>: Manages system and
        app downloads. Essential for downloading files and updates.</li>
      <li><code>com.android.providers.userdictionary</code>: Manages the user
        dictionary, which is used by keyboards to store custom words.</li>
      <li><code>com.android.externalstorage</code>: Access external storage
        (like SD Cards).</li>
      <li><code>com.android.htmlviewer</code>: HTML renderer for displaying
        web content.</li>
      <li><code>com.android.statementservice</code>: Verifies app linking and
        manages Android App Links for verified URLs.</li>
      <li><code>com.android.packageinstaller</code>: Manages app installations
        and updates. Removing this prevents installing new apps or updating
        existing ones.</li>
      <li><code>com.android.internal.systemui.navbar.threebutton</code>: Part
        of the system UI that manages the three-button navigation bar.</li>
    </ul>
    <li>
      Networking & Communication
    </li>
    <ul>
      <li><code>com.android.providers.telephony</code>: Manages SMS/MMS functionality.
        Removing this can break messaging services.</li>
      <li><code>com.android.mms</code>: Default SMS/MMS app. Needed for sending
        and receiving text messages.</li>
      <li><code>com.android.bluetooth</code>: Bluetooth functionality. Removing
        it will disable Bluetooth connectivity.</li>
      <li><code>com.android.wifi</code>: Manages Wi-Fi connections. Essential
        for Wi-Fi functionality.</li>
      <li><code>com.android.networkstack.tethering.overlay</code>: Network
        Stack Tethering: Manages network tethering functionalities.</li>
      <li><code>com.android.networkstack.tethering.inprocess.overlay</code>:
        Another component managing network tethering.</li>
      <li><code>com.android.location.fused</code>: Manages fused location provider
        for GPS and network-based location services.</li>
      <li><code>com.android.ons</code>: Operator Name Service, used to display
        carrier name information.</li>
      <li><code>com.android.vpndialogs</code>: Handles dialog boxes related
        to VPN connections.</li>
    </ul>
    <li>
      File Management & Storage
    </li>
    <ul>
      <li><code>com.android.providers.downloads.ui</code>: The system’s download
        manager interface. Required for managing files downloaded through
        the browser or other apps.</li>
      <li><code>com.android.documentsui</code>: Default file picker, which
        allows apps to open and save files.</li>
      <li><code>com.android.mtp</code>: Media Transfer Protocol for transferring
        files between devices and a PC.</li>
    </ul>
    <li>
      Important Accessibility Services
    </li>
    <ul>
      <li><code>com.android.accessibility</code>: Core accessibility services,
        needed for users who require screen readers, magnifiers, or other
        assistive technologies.</li>
      <li><code>com.android.batterywarning</code>: Battery management and warnings.</li>
    </ul>
    <li>
      Media and Device Features
    </li>
    <ul>
      <li><code>com.android.camera</code>: Camera app. Removing this will break
        the default camera functionality.</li>
      <li><code>com.android.gallery</code>: The default gallery app, often
        integrated with the camera app for photo viewing.</li>
      <li><code>com.android.soundrecorder</code>: Default sound recorder. Avoid
        removing if you use voice recordings.</li>
      <li><code>com.android.nfc</code>: Near Field Communication service. Needed
        for devices that use NFC payments or transfers.</li>
    </ul>
    <li>
      Update Services
    </li>
    <ul>
      <li><code>com.android.packageinstaller</code>: Manages app installations
        and updates. Removing this prevents installing new apps or updating
        existing ones.</li>
      <li><code>com.android.systemupdates</code>: Manages system updates, which
        is crucial for security and stability patches.</li>
    </ul>
    <li>
      SIM & Carrier Related Services
    </li>
    <ul>
      <li><code>com.android.carrierconfig</code>: Manages carrier-specific
        configurations for cellular networks.</li>
      <li><code>com.android.stk</code>: SIM Toolkit, used by the carrier's
        SIM card for certain network operations.</li>
      <li><code>com.android.hotspot2.osulogin</code>: Manages login to Hotspot
        2.0 networks.</li>
    </ul>
    <li>
      Security & Certificates
    </li>
    <ul>
      <li><code>com.android.pacprocessor</code>: Manages proxy auto-configuration
        (PAC) for network connections.</li>
      <li><code>com.android.certinstaller</code>: Certificate installer, needed
        for installing security certificates.</li>
    </ul>
    <li>
      Enterprise & Device Management
    </li>
    <ul>
      <li><code>com.android.managedprovisioning</code>: Manages provisioning
        of devices for enterprise use, such as work profiles or device
        management.</li>
      <li><code>com.android.backupconfirm</code>: Backup confirmation service
        for Google backups.</li>
    </ul>
  </ol>

  <h2>Core Google Packages</h2>
  <ul>
    <li><code>com.google.android.gms</code> - Google Play Services: Critical
      for app functionality, push notifications, location services, and
      account synchronization.</li>
    <li><code>com.google.android.gsf</code> - Google Services Framework: Facilitates
      communication between the system and Google's services. Essential
      for syncing and system-level operations.</li>
    <li><code>com.android.vending</code> - Google Play Store: The app store
      for downloading and managing apps.</li>
    <li><code>com.google.android.syncadapters.contacts</code> - Google Contacts
      Sync: Synchronizes contacts between your device and Google accounts.</li>
    <li><code>com.google.android.syncadapters.calendar</code> - Google Calendar
      Sync: Synchronizes calendar events with Google Calendar.</li>
    <li><code>com.google.android.partnersetup</code> - Google Partner Setup:
      Handles partnerships and agreements between Google and OEMs.</li>
    <li><code>com.google.android.apps.restore</code> - Google Backup and Restore:
      For backing up apps and settings to Google Cloud.</li>
    <li><code>com.google.android.tts</code> - Google Text-to-Speech: Used for
      reading text aloud, like in Google Maps navigation.</li>
    <li><code>com.google.android.inputmethod.latin</code> - Gboard (Google
      Keyboard): The default Google keyboard.</li>
    <li><code>com.google.android.gms.location.history</code> - Google Location
      History: Manages location tracking for Google services.</li>
    <li><code>com.google.android.webview</code> - Google WebView: Enables apps
      to display web content. Removing this will break web-based app functionalities.
      Can be removed, but only after you've installed Bromite webview.</li>
    <li><code>com.google.android.ext.services</code> - Extension Services:
      Provides extended features that may be required by the system.</li>
    <li><code>com.google.android.networkstack.tethering.overlay</code> - Network
      Stack Tethering: Manages network tethering functionalities.</li>
    <li><code>com.google.android.configupdater</code> - Config Updater: Responsible
      for updating system configurations such as network policies and security
      configurations.</li>
    <li><code>com.google.android.providers.media.module</code> - Media Provider
      Module: Manages media files and system interactions with them.</li>
    <li><code>com.google.android.overlay.modules.permissioncontroller</code>
    - Overlay for Permission Controller: Manages app permissions and
      system permission policies.</li>
    <li><code>com.google.android.permissioncontroller</code> - Permission Controller:
      Essential for managing app permissions on Android devices.</li>
    <li><code>com.google.android.setupwizard</code> - Setup Wizard: Guides
      the user through the device setup after a factory reset or on first
      use.</li>
    <li><code>com.google.android.captiveportallogin</code> - Captive Portal
      Login: Required for connecting to Wi-Fi networks that use captive
      portals.</li>
    <li><code>com.google.android.modulemetadata</code> - Module Metadata: Provides
      metadata for Google Play system updates (Project Mainline).</li>
    <li><code>com.google.android.networkstack</code> - Network Stack: Manages
      networking functionalities, including internet connections.</li>
    <li><code>com.google.android.networkstack.permissionconfig</code> - Network
      Stack Permission Config: Manages permissions related to network functionalities.</li>
    <li><code>com.google.android.networkstack.overlay</code> - Network Stack
      Overlay: Provides additional support for network functionalities.</li>
    <li><code>com.google.android.packageinstaller</code> - Package Installer:
      Essential for installing, updating, or uninstalling apps on your
      device.</li>
    <li><code>com.google.android.ims</code> - IMS (IP Multimedia Subsystem):
      Manages services like VoLTE, video calling, and SMS over LTE networks.</li>
    <li><code>com.google.android.documentsui</code> - Documents UI: Provides
      a user interface for file management and document access.</li>
    <li><code>com.google.android.overlay.modules.documentsui</code> - Documents
      UI Overlay: An overlay package for the Documents UI module.</li>
    <li><code>com.google.android.connectivity.resources</code> - Connectivity
      Resources: Provides resources for connectivity features such as Wi-Fi,
      data, and Bluetooth.</li>
    <li><code>com.google.mainline.telemetry</code> - Mainline Telemetry: Gathers
      and reports system telemetry for system stability and security updates.</li>
    <li><code>com.google.android.apps.wellbeing</code> - *Dependency</li>
    <li><code>com.google.android.dialer</code> - *Spam block</li>
    <li><code>com.fido.xiaomi.uafclient</code> - *</li>
    <li><code>com.google.android.ext.shared</code> - *</li>
    <li><code>com.android.printspooler</code> - *</li>
    <li><code>com.android.bips</code> - *</li>
    <li><code>com.android.wallpaper.livepicker</code> - *</li>
    <li><code>com.android.storagemanager</code> - *</li>
    <li><code>com.android.wallpaperbackup</code> - *</li>
    <li><code>com.android.wallpaperpicker</code> - *</li>
    <li><code>com.android.thememanager</code> - *</li>
    <li><code>com.android.thememanager.module</code> - *</li>
  </ul>

  <h3>Core Samsung Packages</h3>
  <ul>
    <li><code>com.samsung.android.contacts</code> – Samsung’s Contacts app,
      essential for managing contacts on the device.</li>
    <li><code>com.samsung.android.messaging</code> – Samsung’s messaging app,
      used for SMS and MMS.</li>
    <li><code>com.samsung.android.dialer</code> – Samsung’s phone dialer app,
      crucial for making calls.</li>
    <li><code>com.samsung.android.app.settings</code> – Samsung’s version of
      the Settings app, which includes custom settings features for Samsung
      devices.</li>
    <li><code>com.samsung.android.game.gametools</code> – Samsung Game Tools,
      manages in-game options and optimizations.</li>
    <li><code>com.samsung.android.oneconnect</code> – Samsung SmartThings framework,
      used for connecting and controlling smart home devices.</li>
    <li><code>com.samsung.android.soundalive</code> – Audio enhancements and
      sound optimization on Samsung devices.</li>
    <li><code>com.samsung.android.smartswitchassistant</code> – Samsung Smart
      Switch, used for transferring data between devices.</li>
    <li><code>com.samsung.android.bixby.agent</code> – Bixby assistant framework,
      required for using Samsung’s Bixby AI assistant.</li>
    <li><code>com.samsung.android.scloud</code> – Samsung Cloud services, handling
      backups and cloud storage.</li>
  </ul>

  <h3>Core Xiaomi MIUI Packages</h3>
  <ul>
    <li><code>com.miui.systemAdSolution</code> – Related to ads, but some components
      may affect system stability.</li>
    <li><code>com.miui.securitycenter</code> – Security Center, manages system
      security and optimizations.</li>
    <li><code>com.miui.cloudservice</code> – Xiaomi Cloud services, handles
      backups and cloud synchronization.</li>
    <li><code>com.miui.home</code> – MIUI Launcher, responsible for the home
      screen and app drawer.</li>
    <li><code>com.miui.miservice</code> – Xiaomi service framework, essential
      for system-level services and updates.</li>
    <li><code>com.miui.powerkeeper</code> – Manages power consumption and battery-saving
      features.</li>
    <li><code>miui.systemui.plugin</code> – Plugin for MIUI System UI, essential
      for system-level UI management.</li>
    <li><code>com.miui.guardprovider</code> – MIUI’s integrated antivirus and
      security service.</li>
    <li><code>com.miui.backup</code> – MIUI’s backup service, essential for
      restoring data.</li>
    <li><code>com.miui.notification</code> – Handles notifications within MIUI,
      critical for receiving system and app alerts.</li>
    <li><code>com.miui.global.packageinstaller</code> – MIUI’s package installer,
      required for installing apps and updates.</li>
    <li><code>com.miui.freeform</code> – Freeform window management, allowing
      apps to run in separate windows.</li>
    <li><code>com.lbe.security.miui</code> – MIUI’s permission management and
      security features.</li>
    <li><code>com.miui.core</code> – Core MIUI framework, required for system
      stability.</li>
    <li><code>com.miui.face</code> – Face unlock and related features in MIUI.</li>
    <li><code>com.xiaomi.account</code> – Xiaomi account service, needed for
      device syncing and cloud services.</li>
    <li><code>com.xiaomi.simactivate.service</code> – SIM activation service,
      essential for SIM card management.</li>
    <li><code>com.xiaomi.location.fused</code> – Xiaomi’s location service,
      used for GPS and network-based location tracking.</li>
    <li><code>com.xiaomi.xmsf</code> – Xiaomi’s core messaging service framework.</li>
    <li><code>com.xiaomi.xmsfkeeper</code> – Xiaomi’s service for keeping core
      system processes running in the background.</li>
    <li><code>com.xiaomi.misettings</code> – Xiaomi-specific settings, integrated
      into the system settings app.</li>
    <li><code>com.android.updater</code> – MIUI’s system updater, necessary
      for receiving and applying system updates.</li>
  </ul>

  <h3>Core MediaTek Packages</h3>
  <ul>
    <li><code>com.mediatek.ygps</code> – MediaTek's GPS service, important
      for location services.</li>
    <li><code>com.mediatek.callrecorder</code> – Call recording feature, necessary
      if you use this functionality.</li>
    <li><code>com.mediatek.engineermode</code> – Access to engineering mode
      for advanced device settings.</li>
    <li><code>com.mediatek.capctrl.service</code> – Capabilities control service
      for managing hardware features.</li>
    <li><code>com.mediatek.lbs.em2.ui</code> – Location-based services UI component.</li>
    <li><code>com.mediatek.ims</code> – IP Multimedia Subsystem services, crucial
      for VoLTE and messaging services.</li>
    <li><code>com.mediatek.telephony</code> – Telephony services for managing
      calls and SMS.</li>
    <li><code>com.mediatek.location.lppe.main</code> – Low Power Location Engine
      for efficient GPS tracking.</li>
    <li><code>com.mediatek</code> – General MediaTek services component.</li>
    <li><code>com.mediatek.SettingsProviderResOverlay</code> – Settings provider
      overlay for MediaTek-specific settings.</li>
    <li><code>com.mediatek.systemuiresoverlay</code> – System UI overlay for
      MediaTek devices.</li>
    <li><code>com.mediatek.frameworkresoverlay</code> – Framework resources
      overlay for MediaTek applications.</li>
  </ul>

  <h3>Core Realme Packages</h3>
  <ul>
    <li><code>com.oppo.launcher</code> – Realme/Oppo Launcher, handles the
      home screen and app organization.</li>
    <li><code>com.coloros.systemui</code> – System UI for Realme/Oppo devices,
      managing notifications, status bar, and navigation.</li>
    <li><code>com.coloros.security</code> – Security features for Realme devices,
      essential for device security.</li>
    <li><code>com.oppo.quicksearchbox</code> – Default search bar for Realme,
      linked to system functions.</li>
    <li><code>com.coloros.safecenter</code> – Safety Center, manages permissions
      and security settings.</li>
  </ul>

  <h3>Core Motorola Packages</h3>
  <ul>
    <li><code>com.motorola.actions</code> – Moto Actions, provides gesture-based
      interactions like shake for flashlight and chop for camera.</li>
    <li><code>com.motorola.motodisplay</code> – Moto Display, shows notifications
      and time when the screen is off.</li>
    <li><code>com.motorola.launcher3</code> – Motorola’s default launcher,
      handling the home screen and app drawer.</li>
    <li><code>com.motorola.help</code> – Moto Help, Motorola’s support app
      that provides troubleshooting and tips.</li>
    <li><code>com.motorola.timeweatherwidget</code> – Time and weather widget
      used on the home screen for Motorola devices.</li>
  </ul>

  <h2>Removing Packages</h2>

  <p>To safely remove packages from your phone, first list all installed packages:
  </p>

  <h1>Removable Apps List (Non-Core Functionalities)</h1>

  <h2>1. Media & Entertainment</h2>
  <ul>
    <li><code>com.netflix.mediaclient</code> – Netflix client.</li>
    <li><code>com.google.android.youtube</code> – YouTube app.</li>
    <li><code>com.google.android.apps.youtube.music</code> – YouTube Music
      app.</li>
    <li><code>com.google.android.apps.podcasts</code> – Google Podcasts app.</li>
    <li><code>com.google.android.videos</code> – Google Videos app.</li>
    <li><code>com.gallery.player</code> – Gallery player app.</li>
    <li><code>com.google.android.apps.magazines</code> – Google Play Newsstand.</li>
    <li><code>com.google.android.apps.docs</code> – Google Drive/Docs app.</li>
    <li><code>com.google.android.marvin.talkback</code> – Accessibility service.</li>
    <li><code>com.google.android.apps.restore</code> – Restore app.</li>
  </ul>

  <h2>2. Social Media</h2>
  <ul>
    <li><code>com.facebook.katana</code> – Facebook app.</li>
    <li><code>com.facebook.system</code> – Facebook system services.</li>
    <li><code>com.facebook.appmanager</code> – Facebook app management.</li>
  </ul>

  <h2>3. Shopping & Games</h2>
  <ul>
    <li><code>in.amazon.mShop.android.shopping</code> – Amazon shopping app.</li>
    <li><code>com.sukhavati.gotoplaying.bubble.BubbleShooter.mint</code> –
      Bubble Shooter game.</li>
    <li><code>com.candycrushsaga</code> – Candy Crush Saga game.</li>
    <li><code>com.angrybirds</code> – Angry Birds game.</li>
    <li><code>com.tencent.ig</code> – PUBG Mobile.</li>
    <li><code>com.roblox.client</code> – Roblox.</li>
  </ul>

  <h2>4. System & Default Apps</h2>
  <ul>
    <li><code>com.android.camera</code> – Default camera app (replace with
      preferred alternative).</li>
    <li><code>com.android.deskclock</code> – Clock app.</li>
    <li><code>com.android.thememanager</code> – Theme manager.</li>
    <li><code>com.android.thememanager.module</code> – Theme manager module.</li>
    <li><code>com.android.providers.calendar</code> – Calendar provider.</li>
    <li><code>com.android.providers.partnerbookmarks</code> – Partner bookmarks
      provider.</li>
    <li><code>com.android.cellbroadcastreceiver</code> – Cell broadcast receiver.</li>
    <li><code>com.android.soundrecorder</code> – Default sound recorder.</li>
    <li><code>com.android.mms.service</code> – MMS messaging service.</li>
    <li><code>com.android.providers.downloads.ui</code> – Download manager
      interface.</li>
    <li><code>com.android.dreams.basic</code> – Live wallpapers.</li>
    <li><code>com.android.soundpicker</code> – Sound picker utility.</li>
    <li><code>com.android.emergency</code> – Emergency information app.</li>
    <li><code>com.android.companiondevicemanager</code> – Device management.</li>
  </ul>

  <h2>5. Google Services</h2>
  <ul>
    <li><code>com.google.android.gms.location.history</code> – Location history
      tracking.</li>
    <li><code>com.google.android.contacts</code> – Google Contacts app.</li>
    <li><code>com.google.android.feedback</code> – Feedback app.</li>
    <li><code>com.google.android.partnersetup</code> – Partner setup services.</li>
    <li><code>com.google.android.apps.messaging</code> – Google Messages app.</li>
    <li><code>com.google.android.gm</code> – Gmail app.</li>
    <li><code>com.google.android.apps.maps</code> – Google Maps app.</li>
    <li><code>com.google.android.apps.nbu.paisa.user</code> – Google Pay app.</li>
    <li><code>com.google.android.syncadapters.contacts</code> – Contacts sync
      adapter.</li>
    <li><code>com.google.android.syncadapters.calendar</code> – Calendar sync
      adapter.</li>
    <li><code>com.google.android.apps.nbu.files</code> – Files app.</li>
  </ul>

  <h2>6. Xiaomi MIUI Apps</h2>
  <ul>
    <li><code>com.miui.screenrecorder</code> – MIUI screen recorder.</li>
    <li><code>com.miui.fm</code> – MIUI FM radio.</li>
    <li><code>com.miui.qr</code> – QR code scanner.</li>
    <li><code>com.miui.gallery</code> – MIUI Gallery app.</li>
    <li><code>com.miui.msa.global</code> – MIUI service ads.</li>
    <li><code>com.miui.micloudsync</code> – MIUI cloud synchronization.</li>
    <li><code>com.miui.cloudbackup</code> – Cloud backup app.</li>
    <li><code>com.miui.notes</code> – MIUI Notes app.</li>
    <li><code>com.miui.weather2</code> – MIUI Weather app.</li>
    <li><code>com.miui.audioeffect</code> – Audio effects app.</li>
    <li><code>com.miui.touchassistant</code> – Touch assistant feature.</li>
    <li><code>com.miui.miservice</code> – MIUI service framework.</li>
    <li><code>com.miui.player</code> – MIUI Video Player.</li>
    <li><code>com.miui.calculator</code> – MIUI Calculator.</li>
    <li><code>com.miui.miwallpaper</code> – MIUI Wallpapers app.</li>
    <li><code>com.miui.analytics</code> – MIUI Analytics.</li>
    <li><code>com.miui.mediaeditor</code> – Media editing app.</li>
  </ul>

  <h2>7. Additional Apps</h2>
  <ul>
    <li><code>com.google.android.cellbroadcastservice</code> – Cell broadcast
      service.</li>
    <li><code>com.google.android.cellbroadcastreceiver</code> – Cell broadcast
      receiver.</li>
    <li><code>com.google.android.onetimeinitializer</code> – Initial setup
      for Google services.</li>
    <li><code>com.google.android.printservice.recommendation</code> – Print
      service recommendation.</li>
    <li><code>cn.wps.xiaomi.abroad.lite</code> – WPS Office Lite.</li>
    <li><code>com.xiaomi.powerchecker</code> – Battery performance app.</li>
    <li><code>com.xiaomi.micloud.sdk</code> – MiCloud SDK services.</li>
    <li><code>com.xiaomi.payment</code> – MiPay service.</li>
    <li><code>com.xiaomi.scanner</code> – Mi Scanner app.</li>
    <li><code>com.xiaomi.midrop</code> – MiDrop file transfer.</li>
    <li><code>com.xiaomi.calendar</code> – Xiaomi Calendar app.</li>
    <li><code>com.mi.android.globalminusscreen</code> – Global minus screen
      app.</li>
    <li><code>com.mi.android.globalFileexplorer</code> – Global file explorer.</li>
  </ul>

  <pre><code>adb shell pm list packages</code></pre>

  <p>You can filter packages by name. For example, to find all packages with
    "Google" in their name:</p>

  <pre><code>adb shell pm list packages | grep google</code></pre>

  <p>Once you have identified the package name, use this command to uninstall
    it:
  </p>

  <pre><code>adb shell pm uninstall --user 0 com.package.name</code></pre>

  <p>If you encounter <code>DELETE_FAILED_INTERNAL_ERROR</code>, the above
    command should bypass the issue.</p>

  <h2>Step 5: Custom Bash Scripts</h2>

  <h3>1. Script to Remove Packages via ADB</h3>

  <p>You can automate the removal of packages by creating a bash script. Below
    is an example:</p>

<pre><code>
#!/bin/bash

# List of packages to remove

packages=(
"com.example.package1"
"com.example.package2"
"com.example.package3"
)

for pkg in "${packages[@]}"
do
echo "Removing $pkg..."
adb shell pm uninstall --user 0 $pkg
done

echo "Debloating complete!"
</code></pre>

  <h3>2. Script to Download APKs from F-Droid and Install via ADB</h3>

  <pre><code>sudo apt-get install wget</code></pre>

  <p>You can also use a bash script to download and install APKs from F-Droid:</p>

<pre><code>
#!/bin/bash

# List of F-Droid APK URLs to download

apks=(
    "https://f-droid.org/repo/com.example.app1.apk"
    "https://f-droid.org/repo/com.example.app2.apk"
)

for url in "${apks[@]}"
do
    filename=$(basename $url)
    echo "Downloading $filename..."
    wget $url

    echo "Installing $filename on device..."
    adb install $filename
done

echo "APK installation complete!"
</code></pre>

  <h2>Useful References</h2>

  <ul>
    <li><a href="https://f-droid.org" target="_blank">F-Droid</a> - F-Droid
      is an installable catalogue of FOSS (Free and Open Source Software)
      applications for the Android platform.</li>
    <li><a href="https://www.xda-developers.com" target="_blank">XDA Developers Forum</a>
    - A great source for guides, tutorials, and discussions for debloating
      and modifying Android devices.</li>
    <li><a href="https://forum.xda-developers.com/f/xiaomi-miui.3752/" target="_blank">Xiaomi MIUI XDA Forum</a>
    - Guides and discussions specifically for Xiaomi devices running
      MIUI.
    </li>
    <li><a href="https://forum.xda-developers.com/f/realme.11997/" target="_blank">Realme XDA Forum</a>
    - Resources and guides for Realme users on customizing and debloating
      their devices.</li>
    <li><a href="https://forum.xda-developers.com/f/samsung-galaxy.159/" target="_blank">Samsung XDA Forum</a>
    - Guides and discussions for Samsung Galaxy users.</li>
    <li><a href="https://forum.xda-developers.com/f/motorola.3099/" target="_blank">Motorola XDA Forum</a>
    - Resources for Motorola devices, focusing on customization and optimization.
    </li>
  </ul>

</body>
</html>