cask "ping-notifier" do
  version "0.9.0"
  sha256 "1e01385ae8013e21f3cfb56134030284e4866c25e7ea8847b0b94ffe240f3b2f"

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
