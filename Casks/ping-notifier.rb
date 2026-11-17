cask "ping-notifier" do
  version "0.10.0"
  sha256 "ea5bc0e8e5539ff89a0eec4cbdbf982ae4a50683953ae5bd102fdbc5e8510ac3"

  url "https://github.com/novalumo/ping-notifier/releases/download/v#{version}/PingNotifier-#{version}-macos-arm64.zip"
  name "Ping Notifier"
  desc "Menu bar app that notifies you of ping timeouts"
  homepage "https://github.com/novalumo/ping-notifier"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Ping Notifier.app"

  uninstall quit: "com.novalumo.ping-notifier"

  zap trash: "~/Library/Application Support/ping-notifier"
end
