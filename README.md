# homebrew-tap

Homebrew tap for [salamancacm](https://github.com/salamancacm)'s tools.

## Usage

```bash
brew tap salamancacm/tap
brew install vpsguard
```

## Formulas

| Formula | Notes |
|---|---|
| [vpsguard](https://github.com/salamancacm/vpsguard) | Linux only — see [Formula/vpsguard.rb](Formula/vpsguard.rb) for why |

## Bumping a formula after a new release

There's no automation for this yet — after cutting a new
[vpsguard release](https://github.com/salamancacm/vpsguard/releases):

1. Update `version` in `Formula/vpsguard.rb` to the new tag (without the
   `v` prefix).
2. Update both `url` lines to point at the new tag.
3. Update both `sha256` values from the new release's `checksums.txt`.
4. `brew audit --strict vpsguard` and `brew test vpsguard` locally if you
   have Homebrew-on-Linux available, then commit and push.
