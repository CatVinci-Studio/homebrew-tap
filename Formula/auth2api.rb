class Auth2api < Formula
  desc "Serve a ChatGPT account as a local OpenAI-compatible API"
  homepage "https://github.com/CatVinci-Studio/Auth2API"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.4/auth2api-macos-arm64.tar.gz"
      sha256 "3d2d9369d5083d0d39775a86cfb495d2404262e85f8fd33ab87d1ceaca48d106"
    end

    on_intel do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.4/auth2api-macos-x64.tar.gz"
      sha256 "9503037d4082c077a3d44d3b35d15003b22d1db1f466ef6f4f3ec16a09dac15a"
    end
  end

  def install
    bin.install "auth2api"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auth2api --version")
  end
end
