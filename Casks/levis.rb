cask "levis" do
  version "0.8.4"
  sha256 "e50f85bf934b7455096c7f93eec77d268a5aa2d2400d9a1d9657eed1e5137e5f"

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
