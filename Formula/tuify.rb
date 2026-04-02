class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.2.0/tuify_darwin_arm64.tar.gz"
      sha256 "7c0508296f987b742612f7e484395b0a1b63d0f8f8e441930150181a950f4486"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.2.0/tuify_darwin_amd64.tar.gz"
      sha256 "d7a45a95ca33d82b53ff34d28901a6ba49af03bac93b0654563bc09823a59598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.2.0/tuify_linux_arm64.tar.gz"
      sha256 "49df5480dcefbfddd6d56fa1ca1eeca6d5ca1efb0420a726dc6dde07c0690b1c"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.2.0/tuify_linux_amd64.tar.gz"
      sha256 "ee30e88827ee955ee1c18da2e4aedcb7dace07d7fa7d4e3dabcf872178d59fbd"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
