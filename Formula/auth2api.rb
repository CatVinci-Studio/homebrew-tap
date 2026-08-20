class Auth2api < Formula
  desc "Serve a ChatGPT account as a local OpenAI-compatible API"
  homepage "https://github.com/CatVinci-Studio/Auth2API"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.2/auth2api-macos-arm64.tar.gz"
      sha256 "5caed4a0e231a14485cce30891933665d992c1ac2d304750ed9ae4f38eeb717e"
    end

    on_intel do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.2/auth2api-macos-x64.tar.gz"
      sha256 "41af8f234a5de86c8ee6d31c3d1df3898768bda14094a81469ac36b72c691ca1"
    end
  end

  def install
    bin.install "auth2api"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auth2api --version")
  end
end
