cask "levis" do
  version "0.8.0"
  sha256 "432fed48ea673849be62f26d4265d95e60f8b52cbfff8e4bff9d8ed30b2ef827"

  url "https://github.com/CatVinci-Studio/Levis/releases/download/v#{version}/Levis_#{version}_aarch64.dmg"
  name "Levis"
  desc "AI-native WYSIWYG Markdown editor"
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

  caveats <<~EOS
    Levis is not signed with an Apple Developer certificate yet.
    If macOS blocks the app on first launch, clear the quarantine flag:

      xattr -cr /Applications/Levis.app

    or right-click the app in Finder and choose "Open".
  EOS
end
