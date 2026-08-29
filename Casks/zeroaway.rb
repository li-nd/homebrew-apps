cask "zeroaway" do
  version "1.0.0"
  sha256 "f996f5b1f6f3ccd5ccd63b72540d5114ee2c3fe0b48165f50345d8c05b215eda"

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
