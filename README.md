# lonlydwolf/homebrew-tap

[![Tests](https://github.com/lonlydwolf/homebrew-tap/actions/workflows/tests.yml/badge.svg)](https://github.com/lonlydwolf/homebrew-tap/actions/workflows/tests.yml)

Homebrew casks for my apps. Currently: **[Animetro](https://github.com/lonlydwolf/animetro)**, anime watch orders as metro lines with live AniList data.

> [!IMPORTANT]
> **This tap and the apps in it were created entirely by AI** (Claude Opus 5.5), at the owner's direction. They have not had a human code review.

## Install

```sh
brew install --cask lonlydwolf/tap/animetro
```

Using the full name trusts just this cask ([Homebrew tap trust](https://docs.brew.sh/Tap-Trust)); there's no separate `brew tap` step.

Animetro isn't notarized by Apple (that needs a paid developer account), and Homebrew keeps macOS's quarantine on downloaded apps on purpose. So the first time you open it, macOS asks you to confirm: **right-click Animetro in Applications › Open**, or **System Settings › Privacy & Security › Open Anyway**. You only do this once per version.

## Update and remove

```sh
brew upgrade --cask animetro                 # new versions arrive here within a day of an Animetro release
brew uninstall --cask animetro               # removes the app, keeps your login and settings
brew uninstall --cask --zap animetro         # also removes its data (~/Library/WebKit/local.animetro and friends)
```

## How this tap stays current

- [`update.yml`](.github/workflows/update.yml) runs daily (and on demand): if Animetro has a newer GitHub release, it downloads it, checks it against the release's published SHA-256, updates the cask's version and checksum, runs Homebrew's audit and commits the change.
- [`tests.yml`](.github/workflows/tests.yml) runs `brew style`, `brew audit --strict --online` and a real install and uninstall on every push and pull request.

## License

[MIT](LICENSE)
