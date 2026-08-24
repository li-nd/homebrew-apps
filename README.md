# homebrew-apps

Shared [Homebrew](https://brew.sh) tap for **li-nd** macOS apps.

This is a **personal tap**, not the official [`Homebrew/homebrew-cask`](https://github.com/Homebrew/homebrew-cask) repository.

Homebrew may require trusting the tap once before install (`brew trust li-nd/apps`). NativePass currently targets **macOS Tahoe** and newer (matches the app’s deployment target).

## Install NativePass

```bash
brew tap li-nd/apps
brew trust li-nd/apps   # required by Homebrew for third-party taps
brew install --cask nativepass
```

Docs: [https://np.developer.pm](https://np.developer.pm)  
Source: [https://github.com/li-nd/NativePass](https://github.com/li-nd/NativePass)

### Prerequisites

NativePass is a GUI for the Unix `pass` password manager. Install the CLI stack separately:

```bash
brew install pass gnupg pinentry-mac pass-otp
```

(`pass-otp` is optional, for TOTP entries.)

### Upgrade / uninstall

```bash
brew update
brew upgrade --cask nativepass
brew uninstall --cask nativepass
```

### Gatekeeper / signing

Current NativePass builds are **ad-hoc signed and not notarized**. On first launch macOS may block the app.

Workaround:

1. **System Settings → Privacy & Security → Open Anyway**, or  
2. Right-click the app in Finder → **Open** → confirm.

This tap does **not** claim App Store or official Homebrew Cask compliance.

## Apps in this tap

| Cask | App |
|------|-----|
| `nativepass` | [NativePass](https://github.com/li-nd/NativePass) |

## Adding another app

1. Publish a GitHub Release with a zip that contains `YourApp.app` at the top level.
2. Compute `sha256` of the zip (`shasum -a 256 …`).
3. Add a new file under `Casks/` (for example `Casks/yourapp.rb`) following the same pattern as `nativepass.rb`.
4. Document install notes in this README.

Do not add `Formula/` until there are CLI tools to ship.
