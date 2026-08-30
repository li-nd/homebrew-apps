cask "zeroaway" do
  version "1.0.0"
  sha256 "df3dd84f8768c1826904353db54c194a7454e3e523ae16bf4533f7e80ec830ef"

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
