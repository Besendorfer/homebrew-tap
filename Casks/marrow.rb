cask "marrow" do
  version "0.41.0"
  sha256 "fff2e1e97fb770a965b58e266527d82ed0d86b2c68694525fa84115d6738bc36"

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
