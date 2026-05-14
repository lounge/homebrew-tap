class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.5.0/tuify_darwin_arm64.tar.gz"
      sha256 "f32560671891a1b37af82336a21f49bd6b27a22d340f0bc7f65df50297c34e89"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.5.0/tuify_darwin_amd64.tar.gz"
      sha256 "fd913dbbd0e8cc7d2ae8902ad9021bade0e4b5400a5cb5df06c102d8ce334d54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.5.0/tuify_linux_arm64.tar.gz"
      sha256 "13593b538148765e3b14728e8740f4bc2021486e121d22427df1652f7b3a9eef"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.5.0/tuify_linux_amd64.tar.gz"
      sha256 "f1aeca537934bb0658a20c3b90ac195b424d385cb5c91bef910a270e4b02d775"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
