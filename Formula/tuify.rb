class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.3.0/tuify_darwin_arm64.tar.gz"
      sha256 "3bf7e07a3bfc46d369be72c59f5d788929c8c21bbc66608c6e6119732ce8f0ab"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.3.0/tuify_darwin_amd64.tar.gz"
      sha256 "0f0850574bdb97413b2360e259432f7e830baccac56ada67920bdef833769f3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.3.0/tuify_linux_arm64.tar.gz"
      sha256 "3a0303b204a36fc97d861f9254f3119271d40a458f37cbfc066d2ab84019b2d9"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.3.0/tuify_linux_amd64.tar.gz"
      sha256 "31546f80103c4fcfb54d060e5b29e5ad1a7db0122ce2979769e7319b7147e66e"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
