cask "ping-notifier" do
  version "0.12.1"
  sha256 "df9ef0a1c7c3ce2d40610495da8e373bf26e0690d66cd1348cb9e0b23198c62b"

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
