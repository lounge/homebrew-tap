class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.5.1/tuify_darwin_arm64.tar.gz"
      sha256 "c3fb5c2e95fa8c65bd2e2418ccf810abd3d572ffd3153694e7a787a8f1a83e93"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.5.1/tuify_darwin_amd64.tar.gz"
      sha256 "ca7370109d2cf64d2d068ab8cf354eac368dc5f27d655c9a21d5da1b07f7e90a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.5.1/tuify_linux_arm64.tar.gz"
      sha256 "feff0e9d7566b938f06ced627bdb13159c2240f27b2dc439bf84c480a4abca35"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.5.1/tuify_linux_amd64.tar.gz"
      sha256 "d58af322ff43888a95cd858c3e20aab9a25bc05685f1422acbf746bba57c3dd1"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version")
  end
end
