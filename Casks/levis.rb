cask "levis" do
  version "0.6.5"
  sha256 "792416169b39a7361f2e0330ca83cc888ece5bb900517d3dbd18ac3f86d3af3d"

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
