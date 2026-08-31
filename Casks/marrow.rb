cask "marrow" do
  version "0.44.0"
  sha256 "56330dde0fd39b21465212328e2d87619c89e868e98caa1c3e3a594b2e570e24"

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
