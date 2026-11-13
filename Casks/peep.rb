# Generated from Packaging/homebrew/peep.rb in itspriddle/peep by scripts/render-cask.
# Don't edit it here: the next release replaces it.
cask "peep" do
  version "0.1.0"
  sha256 "ad8b8c002476d9dece42a4c74ea1e127e1645ac9ff924846f0469ab5157445f2"

  url "https://github.com/itspriddle/peep/releases/download/v#{version}/Peep-#{version}.dmg"
  name "Peep"
  desc "Markdown viewer with a command-line tool"
  homepage "https://peep.now/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Peep.app"
  binary "#{appdir}/Peep.app/Contents/Helpers/peep"
  manpage "#{appdir}/Peep.app/Contents/Resources/man/man1/peep.1"
  bash_completion "#{appdir}/Peep.app/Contents/Resources/completions/peep.bash"
  zsh_completion "#{appdir}/Peep.app/Contents/Resources/completions/_peep"
  fish_completion "#{appdir}/Peep.app/Contents/Resources/completions/peep.fish"

  zap trash: [
    "~/Library/Application Support/Peep",
    "~/Library/Caches/now.peep.Peep",
    "~/Library/HTTPStorages/now.peep.Peep",
    "~/Library/HTTPStorages/now.peep.Peep.binarycookies",
    "~/Library/Preferences/now.peep.Peep.plist",
    "~/Library/Saved Application State/now.peep.Peep.savedState",
    "~/Library/WebKit/now.peep.Peep",
  ]
end
