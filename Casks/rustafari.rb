# Homebrew cask for rustafari.
#
# This file belongs in a tap repository named `homebrew-rustafari`, under
# `Casks/rustafari.rb`. Users then install with:
#
#   brew tap David-Portillo/rustafari
#   brew install --cask rustafari
#
# On each release, bump `version` and replace `sha256` with the DMG's checksum
# from the release's SHA256SUMS file.
cask "rustafari" do
  version "0.2.0"
  sha256 "d62b185b57d70d07ee7dd15de623fdab7213e74e1e0d16c51e66899faa39d9fd"

  url "https://github.com/David-Portillo/rustafari/releases/download/v#{version}/rustafari-#{version}-macos.dmg"
  name "rustafari"
  desc "Swiss Army knife devtoy — offline developer utilities in a single native app"
  homepage "https://github.com/David-Portillo/rustafari"

  # Matches LSMinimumSystemVersion in packaging/macos/Info.plist.
  depends_on macos: :big_sur

  app "rustafari.app"

  zap trash: [
    "~/Library/Application Support/rustafari",
    "~/Library/Saved Application State/dev.rustafari.app.savedState",
  ]
end
