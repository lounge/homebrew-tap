class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_arm64.tar.gz"
      sha256 "ee4d3070e76a0d13ee0bcfaa3ed0e585bd8ee49c9643c70ed2729604382551a1"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_amd64.tar.gz"
      sha256 "42abe0c555b677300b683285634e54daf4c1f612cefdc1e8d2238496e8a90d9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_arm64.tar.gz"
      sha256 "ccf578b17e40fa1ea205e38165a69a7e1be130ca38669390cd5c90cffe529636"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_amd64.tar.gz"
      sha256 "f49061ef24b29c5a6851a2ef9ac5282980667dcf45ded045a6dc0031ab3abf66"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
