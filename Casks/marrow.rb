cask "marrow" do
  version "0.39.0"
  sha256 "479dc712737fd48b1a41d689c737a00caa7fa8612eeb8330653df5706e6aa639"

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
