class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.4.0/tuify_darwin_arm64.tar.gz"
      sha256 "fe9c9d5e618c92c258a85cf109d4da79b891375e1bb73320e498062faf9be157"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.4.0/tuify_darwin_amd64.tar.gz"
      sha256 "49e016c91b1eada77a0f23e5073942042b91df5468714ec3735f45fa69ac8692"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.4.0/tuify_linux_arm64.tar.gz"
      sha256 "634f5005c0885ebb3b2bb725f2971d23ad9457f0ca3183958f9fff914a405ffd"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.4.0/tuify_linux_amd64.tar.gz"
      sha256 "f581133a3d0039f3822ead0b248b0ed44b2a2df327d373d356bd7a8254e5bbfb"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
