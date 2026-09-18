cask "nativepass" do
  version "1.3.0"
  sha256 "af77983ee2e4f363db5a1321f2ed806894f09488ec74ccfb503df5f89f9c08ab"

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
