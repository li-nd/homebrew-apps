cask "nativepass" do
  version "1.1.0"
  sha256 "7a9387d146822d98fb6af883c9d45cf22ed9ff3a4a4938ae56e330113a614b70"

  url "https://github.com/li-nd/NativePass/releases/download/v#{version}/NativePass-#{version}-macos.zip"
  name "NativePass"
  desc "Native macOS GUI for the Unix password manager pass"
  homepage "https://np.developer.pm"

  depends_on macos: :tahoe

  app "NativePass.app"

  caveats <<~EOS
    NativePass requires the Unix pass stack:
      brew install pass gnupg pinentry-mac pass-otp

    This build may not be notarized. On first launch, if macOS blocks it:
    System Settings → Privacy & Security → Open Anyway
    (or right-click the app → Open).
  EOS

  zap trash: [
    "~/Library/Preferences/com.li-nd.NativePass.plist",
  ]
end
