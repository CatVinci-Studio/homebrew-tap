cask "levis" do
  version "0.7.2"
  sha256 "81cd5df442d2aef2cacfe2af550191980e8dab238a2be233a4ce8f97953cae78"

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
