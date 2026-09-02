cask "zeroaway" do
  version "1.1.0"
  sha256 "c6b09ea37e940d944dfb0c9259605edb62e01c516cc958c82fcb1bb4235b7300"

  url "https://github.com/li-nd/ZeroAway/releases/download/v#{version}/ZeroAway-#{version}.zip"
  name "ZeroAway"
  desc "Reset system idle so apps do not mark you away"
  homepage "https://zeroaway.developer.pm"

  depends_on macos: :sonoma

  app "ZeroAway.app"

  caveats <<~EOS
    ZeroAway requires Accessibility permission:
      System Settings → Privacy & Security → Accessibility → allow ZeroAway

    This build may not be notarized. On first launch, if macOS blocks it:
    System Settings → Privacy & Security → Open Anyway
    (or right-click the app → Open).
  EOS

  zap trash: [
    "~/Library/Preferences/com.li-nd.ZeroAway.plist",
  ]
end
