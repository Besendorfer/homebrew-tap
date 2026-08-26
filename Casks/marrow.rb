cask "marrow" do
  version "0.37.0"
  sha256 "266fa9e8c67a1baebde70b4aabd9064d81e23ed049848bd3770a72c2b17b68b3"

  url "https://github.com/Besendorfer/marrow/releases/download/v#{version}/Marrow_aarch64.dmg"
  name "Marrow"
  desc "AI-powered GitHub PR review app - surfaces only the diffs that matter"
  homepage "https://github.com/Besendorfer/marrow"

  livecheck do
    url "https://github.com/Besendorfer/marrow"
    strategy :github_latest
  end

  # The app self-updates via the Tauri updater; brew upgrade skips it
  # unless --greedy.
  auto_updates true
  depends_on arch: :arm64

  app "Marrow.app"
end
