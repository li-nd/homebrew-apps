cask "nativepass" do
  version "1.5.0"
  sha256 "a4d2c4cc009dd0680bfea037a57ac94677bc07512f16fef2646ffb2d37c583d2"

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
