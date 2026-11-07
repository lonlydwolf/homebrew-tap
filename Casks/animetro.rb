cask "animetro" do
  version "1.1.0"
  sha256 "55bc0c42d9c1f2a9ccbd511597ac7b8dda7cfdb455ba13d161d1e2d8e2b3e5a1"

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
