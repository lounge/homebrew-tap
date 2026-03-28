class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_arm64.tar.gz"
      sha256 "2c1e526140e4556c8ab0daf716e394f5b17c478aa89c58a9cfd9d9618bb92100"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_amd64.tar.gz"
      sha256 "66b2c29a427cbe8359e2434ed57e460ce05998632a89f738bd5cee6dfd200597"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_arm64.tar.gz"
      sha256 "e34c1d2846dbbf342242bb629f6c0173aa104a8133ac0e851bfafb9244e18873"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_amd64.tar.gz"
      sha256 "5028065c3c936721dd22d4d863ef29fc34323e7d15a2604eb0d8ee34abf2b264"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
