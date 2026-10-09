cask "ping-notifier" do
  version "0.4.0"
  sha256 "49c303afb5ffa03991978bdbd04184e488d2d5c131a1123d2d77ca0e32b65180"

  url "https://github.com/siraken/ping-notifier/releases/download/v#{version}/PingNotifier-#{version}-macos-universal.zip"
  name "Ping Notifier"
  desc "Menu bar app that notifies you of ping timeouts"
  homepage "https://github.com/siraken/ping-notifier"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Ping Notifier.app"

  uninstall quit: "com.novalumo.ping-notifier"

  zap trash: "~/Library/Application Support/ping-notifier"
end
