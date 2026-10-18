cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "af8d4fc02d09d8a8b5076fd534bb7b7f849adf75a75e238011decb59f61e4299",
         intel: "389e3864a50d10d0bde334ae0f4e937a7bc33c8c7e0d70912b43e0ebd611556f"

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
