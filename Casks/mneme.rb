cask "mneme" do
  version "0.2.0"
  sha256 "27274b607440632a15ba9ffa5043f8ea72581280000676372193f91b06dda208"

  url "https://github.com/CatVinci-Studio/Mneme/releases/download/v#{version}/Mneme_#{version}_aarch64.dmg"
  name "Mneme"
  desc "Local-first read-it-later app with a native Rust knowledge agent"
  homepage "https://github.com/CatVinci-Studio/Mneme"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Mneme.app"

  zap trash: [
    "~/Library/Application Support/studio.catvinci.mneme",
    "~/Library/Caches/studio.catvinci.mneme",
    "~/Library/Preferences/studio.catvinci.mneme.plist",
    "~/Library/Saved Application State/studio.catvinci.mneme.savedState",
    "~/Library/WebKit/studio.catvinci.mneme",
  ]

  caveats <<~EOS
    Mneme is not signed with an Apple Developer certificate yet.
    If macOS blocks the app on first launch, clear the quarantine flag:

      xattr -cr /Applications/Mneme.app

    or right-click the app in Finder and choose "Open".
  EOS
end
