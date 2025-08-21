class Mdsync < Formula
  desc "Sync AGENTS.md in the current directory"
  homepage "https://www.novalumo.com/mdsync"
  url "https://github.com/novalumo/mdsync/releases/download/v1.0.0/mdsync-1.0.0.tar.gz"
  sha256 "abc123"

  def install
    bin.install "mdsync"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/mdsync --version")
  end
end
