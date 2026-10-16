cask "textus" do
  version "1.0.0"
  sha256 "d58d0d65f7a70a01c4c6752a047c9aa91aaf7b7d07c6138ea7b886a33cb20cb0"

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
