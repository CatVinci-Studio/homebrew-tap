class Auth2api < Formula
  desc "Serve a ChatGPT account as a local OpenAI-compatible API"
  homepage "https://github.com/CatVinci-Studio/Auth2API"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.3/auth2api-macos-arm64.tar.gz"
      sha256 "8e4e013e1ec82b0db7e8fee72237c1fb751c23dd5b1cdf40a2f5d02aae8a2ed9"
    end

    on_intel do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.3/auth2api-macos-x64.tar.gz"
      sha256 "ef5996708b92483a83a31b14f752d2346a10eae952145dac444bb42ddd62c7d7"
    end
  end

  def install
    bin.install "auth2api"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auth2api --version")
  end
end
