class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_arm64.tar.gz"
      sha256 "edde81add0793b7cc020b2bf4a1ee7b0fe0bdee762491217ee314b8a5dd4370b"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_amd64.tar.gz"
      sha256 "e40df628849a65aa662cce6b253ff19b8f9b049ff362b73be3f0298d7d9d6091"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_arm64.tar.gz"
      sha256 "61edc6c9b6b0f15d54c95259de56a4f7ad18de8a605135c854a8c7a8a41688f0"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_amd64.tar.gz"
      sha256 "b42e5293bac5b0d7d887213ccb87c782c709a89ace4123d9960b920150ead450"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
