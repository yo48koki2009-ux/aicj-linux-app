# SEARCHING for AICJ (Linux)

Electron wrapper for https://sites.google.com/view/aicj-searching/home.

## Build

Upload this project to a GitHub repository. In Actions, select **Build Linux packages** > **Run workflow**. Download the `aicj-linux-deb` artifact and extract it. Choose the `.deb` matching the Chromebook Linux architecture (`amd64` or `arm64`).

On a Chromebook with Linux enabled, open the `.deb` in Files and select **Install with Linux**. Find **SEARCHING for AICJ** under Linux apps in the launcher.

## Limitations

The app needs an internet connection. Google Sites / embedded Google Apps Script login and embedded content may behave differently in Electron; test with the actual account and device before distribution. School-managed device policy still applies. External links open in the default browser.
