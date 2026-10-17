cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "3890d7a1e62e155de6188e9eab5e646b6e422e45febeaa910eb5ab088b173ac0",
         intel: "8818432a399e9fec50399a0493d9293c4a706f1335279e761f69ec70f461e4f9"

  url "https://github.com/CatVinci-Studio/Textus/releases/download/v#{version}/Textus_#{version}_#{arch}.dmg"
  name "Textus"
  desc "WYSIWYG Markdown editor"
  homepage "https://textus.catvinci.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Textus.app"

  zap trash: [
    "~/Library/Application Support/com.catvinci.textus",
    "~/Library/Caches/com.catvinci.textus",
    "~/Library/Preferences/com.catvinci.textus.plist",
    "~/Library/Saved Application State/com.catvinci.textus.savedState",
    "~/Library/WebKit/com.catvinci.textus",
  ]
end
