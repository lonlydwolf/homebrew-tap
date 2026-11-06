cask "animetro" do
  version "1.0.0"
  sha256 "345f1713998388222716d9efd699fb41b759158922fe3ece4317ea09118db9cd"

  url "https://github.com/lonlydwolf/animetro/releases/download/v#{version}/Animetro-#{version}-macOS.zip"
  name "Animetro"
  desc "Anime watch orders as metro lines, with live AniList data"
  homepage "https://github.com/lonlydwolf/animetro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Animetro.app"

  zap trash: [
    "~/Library/Caches/local.animetro",
    "~/Library/HTTPStorages/local.animetro",
    "~/Library/Preferences/local.animetro.plist",
    "~/Library/Saved Application State/local.animetro.savedState",
    "~/Library/WebKit/local.animetro",
  ]

  caveats <<~EOS
    Animetro isn't notarized by Apple, so the first time you open it macOS asks
    you to confirm: right-click Animetro in Applications and choose Open, or go
    to System Settings > Privacy & Security and click Open Anyway.
  EOS
end
