class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_arm64.tar.gz"
      sha256 "8067c21f7f8f88d84bb266353f577e98f1d5fa45b3d1c2f7340d273661d762d1"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_amd64.tar.gz"
      sha256 "7346671ee9f4fa1d64fa9ebfd65cb3aa3212979ea0292d6a46f1db9c47fea2f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_arm64.tar.gz"
      sha256 "43d7b9fd92f28556e6c1d8a8149c9fabee31a86fbaab0620d29b3046dfefcea3"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_amd64.tar.gz"
      sha256 "662941461e26d2dda4af57fade51a419f880744b9b64219a4c2bf98351fd471b"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
