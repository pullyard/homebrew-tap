# PullYard Homebrew Tap

Homebrew tap for [PullYard](https://pullyard.github.io/pullyard/), a native GitHub pull request client.

## Install

```bash
brew install --cask pullyard/tap/pullyard
```

Installing by the full name also marks the cask as trusted (Homebrew requires [tap trust](https://docs.brew.sh/Tap-Trust) for third-party taps). If you tap first and install by the short name, trust it explicitly:

```bash
brew tap pullyard/tap
brew trust --cask pullyard/tap/pullyard
brew install --cask pullyard
```

## Gatekeeper

PullYard is not notarized by Apple, so macOS blocks it on first launch. Allow it once with either:

- System Settings → Privacy & Security → **Open Anyway**, or
- `xattr -dr com.apple.quarantine /Applications/PullYard.app`

## Updates

PullYard updates itself from **PullYard → Check for Updates…**. `brew upgrade --cask --greedy pullyard` also works.

The cask is bumped automatically by the `homebrew` workflow in [pullyard/pullyard](https://github.com/pullyard/pullyard) on every published release.

## Uninstall

```bash
brew uninstall --cask pullyard
```

Add `--zap` to also remove settings and caches. The GitHub token stays in the Keychain under `dev.vaache.shipyard`; sign out in the app first to remove it.
