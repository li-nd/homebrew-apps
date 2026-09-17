cask "nativepass" do
  version "1.2.0"
  sha256 "b9a322572e8105f9a7679a83ff5b63e6c40447a4c1dfa9c35ca2a331ae48c672"

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
