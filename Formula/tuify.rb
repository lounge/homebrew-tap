class Tuify < Formula
  desc "A Spotify TUI with visualizers and lyrics"
  homepage "https://github.com/lounge/tuify"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_arm64.tar.gz"
      sha256 "e936d4b54e1fa88b5d3bb5d4beaf2147383aa00bd5efb18b5a2338eb56ef116e"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_darwin_amd64.tar.gz"
      sha256 "e994d2a26f24272626c9119151394526a56a0907cfe3949f7465494b70952f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_arm64.tar.gz"
      sha256 "8348748392102e4397eb73e1b99e3d9522a8e31b13541df8e383697688b45e38"
    else
      url "https://github.com/lounge/tuify/releases/download/v0.1.0/tuify_linux_amd64.tar.gz"
      sha256 "f2f1c9ed9dd0f0a614c4b02c28360c7ed6dff227f7878cf732dfe3f178cc53a4"
    end
  end

  def install
    bin.install "tuify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuify --version", 2)
  end
end
