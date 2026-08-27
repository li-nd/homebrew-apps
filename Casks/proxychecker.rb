cask "proxychecker" do
  version "1.0.0"
  sha256 "cb4c983be89271dd719539b9cda2ff24c0ad5aed140fac57896fc1cd667d940d"

  url "https://github.com/li-nd/proxy-checker-for-mac/releases/download/v#{version}/ProxyChecker-#{version}-macos.zip"
  name "Proxy Checker for Mac"
  desc "Bulk-check HTTP, HTTPS, SOCKS4, and SOCKS5 proxies on macOS"
  homepage "https://proxychecker.developer.pm"

  depends_on macos: :sonoma

  app "ProxyChecker.app"

  caveats <<~EOS
    This build may not be notarized. On first launch, if macOS blocks it:
    System Settings → Privacy & Security → Open Anyway
    (or right-click the app → Open).
  EOS

  zap trash: [
    "~/Library/Preferences/com.li-nd.ProxyChecker.plist",
  ]
end
