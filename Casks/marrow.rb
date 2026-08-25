cask "marrow" do
  version "0.36.0"
  sha256 "33963477098666882d4e04261c43e2541bc15003bd01094b65d283fd32d59d20"

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
