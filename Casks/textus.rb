cask "textus" do
  version "1.0.1"
  sha256 "83757ba99686df06fa6543462fa060c8fceeee931b98b9b9cbe531c627f3692f"

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
