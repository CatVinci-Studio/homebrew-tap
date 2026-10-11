cask "levis" do
  version "0.9.0"
  sha256 "af3060c1aa95770311cd94ac1b131b7af6bf16ced68f588fcbc0624bcfe0b653"

  url "https://github.com/CatVinci-Studio/Levis/releases/download/v#{version}/Levis_#{version}_aarch64.dmg"
  name "Levis"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/CatVinci-Studio/Levis"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Levis.app"

  zap trash: [
    "~/Library/Application Support/com.chengaoshen.levis",
    "~/Library/Caches/com.chengaoshen.levis",
    "~/Library/Preferences/com.chengaoshen.levis.plist",
    "~/Library/Saved Application State/com.chengaoshen.levis.savedState",
    "~/Library/WebKit/com.chengaoshen.levis",
  ]
end
