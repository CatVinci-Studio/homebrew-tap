class Auth2api < Formula
  desc "Serve a ChatGPT account as a local OpenAI-compatible API"
  homepage "https://github.com/CatVinci-Studio/Auth2API"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.1/auth2api-macos-arm64.tar.gz"
      sha256 "78bee97af09ec20d2d7c1614e7b23252a1ac4455435dca22d6580049e563927e"
    end

    on_intel do
      url "https://github.com/CatVinci-Studio/Auth2API/releases/download/v0.1.1/auth2api-macos-x64.tar.gz"
      sha256 "52c59927bda26f3856739cb584462b5536c41e51c1df05e6e4f871967fbbfa30"
    end
  end

  def install
    bin.install "auth2api"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auth2api --version")
  end
end
