cask "backapp" do
  version "1.0.0"
  sha256 "b58424166875104c3d9cf9c8d9337a746ab115a8a3ef1b19bea2e1d21901570d"

  url "https://github.com/li-nd/BackApp/releases/download/v#{version}/BackApp-#{version}-macos.zip"
  name "BackApp"
  desc "Backup and restore your set of installed Mac apps"
  homepage "https://backapp.developer.pm"

  depends_on macos: :tahoe

  app "BackApp.app"

  caveats <<~EOS
    This build may not be notarized. On first launch, if macOS blocks it:
    System Settings → Privacy & Security → Open Anyway
    (or right-click the app → Open).
  EOS

  zap trash: [
    "~/Library/Preferences/com.li-nd.BackApp.plist",
  ]
end
