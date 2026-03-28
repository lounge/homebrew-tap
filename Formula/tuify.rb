class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.1/tuify_darwin_arm64.tar.gz"
      sha256 "20671599edc12b7f30d29c5a06aba1f624b15a488b7ed710d3fbd6346d019856"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.1/tuify_darwin_amd64.tar.gz"
      sha256 "4fd53aac25a7a946b315a9647dc348e39bc7ecc7ea1e8d26d712088ed920abd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.1/tuify_linux_arm64.tar.gz"
      sha256 "4def666392c772dcde75ea5e6ba4d3bbd49de0e919dfb614be554d13abfcd432"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.1/tuify_linux_amd64.tar.gz"
      sha256 "c4c75c6d4dd231198e28131e2a553dd6438badedfbbead529ea756a07d37b824"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
