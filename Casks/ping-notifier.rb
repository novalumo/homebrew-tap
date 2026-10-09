cask "ping-notifier" do
  version "0.6.0"
  sha256 "25f011a0fb5500dac56037dcc7f5eee0558731883a772eefdda3c6721ee35237"

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
