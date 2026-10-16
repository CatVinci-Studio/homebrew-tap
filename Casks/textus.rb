cask "textus" do
  version "1.0.2"
  sha256 "e08a388ee6f3b68929b0346358a211ff6382ce324c297c7bbbd51be987cffd52"

  url "https://github.com/CatVinci-Studio/Textus/releases/download/v#{version}/Textus_#{version}_aarch64.dmg"
  name "Textus"
  desc "WYSIWYG Markdown editor"
  homepage "https://textus.catvinci.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Textus.app"

  zap trash: [
    "~/Library/Application Support/com.catvinci.textus",
    "~/Library/Caches/com.catvinci.textus",
    "~/Library/Preferences/com.catvinci.textus.plist",
    "~/Library/Saved Application State/com.catvinci.textus.savedState",
    "~/Library/WebKit/com.catvinci.textus",
  ]
end
