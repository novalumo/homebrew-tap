cask "ping-notifier" do
  version "0.5.1"
  sha256 "01f2ddd0dc48a9a38faf9bd2e89348963dd84b21e255f063b6239c0f60a4ee19"

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
