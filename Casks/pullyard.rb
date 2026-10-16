cask "pullyard" do
  version "2.8.0"
  sha256 "8fa88f5502d4cbaa25379fc152ab169a995b418eb0a859c45ea53e5b068cb753"

  url "https://github.com/pullyard/pullyard/releases/download/v#{version}/PullYard-#{version}.dmg"
  name "PullYard"
  desc "Native GitHub pull request client"
  homepage "https://pullyard.github.io/pullyard/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PullYard.app"

  zap trash: [
    "~/Library/Application Support/PullYard",
    "~/Library/Caches/dev.vaache.shipyard",
    "~/Library/Caches/PullYard",
    "~/Library/HTTPStorages/dev.vaache.shipyard",
    "~/Library/HTTPStorages/dev.vaache.shipyard.binarycookies",
    "~/Library/Preferences/dev.vaache.shipyard.plist",
    "~/Library/Saved Application State/dev.vaache.shipyard.savedState",
    "~/Library/WebKit/dev.vaache.shipyard",
  ]

  caveats <<~EOS
    PullYard is not notarized by Apple, so macOS blocks it on first launch.
    To allow it, either run:
      xattr -dr com.apple.quarantine #{appdir}/PullYard.app
    or open System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
