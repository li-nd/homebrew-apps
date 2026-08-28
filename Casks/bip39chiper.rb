cask "bip39chiper" do
  version "1.0.0"
  sha256 "d1c9f46d75a11558635abe3fa809c780e970ee149b62df0d911787407b5fd5c6"

  url "https://github.com/li-nd/bip39-chiper-mac/releases/download/v#{version}/Bip39Chiper-#{version}-macos.zip"
  name "Bip39Chiper"
  desc "Offline macOS utility to obfuscate BIP-39 seed phrases"
  homepage "https://chiper.developer.pm"

  depends_on macos: :tahoe

  app "Bip39Chiper.app"

  caveats <<~EOS
    This build may not be notarized. On first launch, if macOS blocks it:
    System Settings → Privacy & Security → Open Anyway
    (or right-click the app → Open).
  EOS

  zap trash: [
    "~/Library/Preferences/com.li-nd.Bip39Chiper.plist",
  ]
end
