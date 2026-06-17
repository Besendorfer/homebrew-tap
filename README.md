# homebrew-tap

Homebrew tap for [Besendorfer](https://github.com/Besendorfer)'s tools.

## Install

```sh
brew tap besendorfer/tap
brew install marrow          # or any other formula below
```

If your Homebrew has `HOMEBREW_REQUIRE_TAP_TRUST` enabled and refuses with an
"untrusted tap" error, run `brew trust besendorfer/tap` once, then install.

## Formulae

- **marrow** — surface the parts of a GitHub pull request that matter, in your
  terminal ([repo](https://github.com/Besendorfer/marrow)).

## Maintenance

Each tool's release workflow generates its formula (with verified checksums) and
attaches it to that tool's GitHub release; copy it into `Formula/` here. For
Marrow, see
[PUBLISHING.md](https://github.com/Besendorfer/marrow/blob/main/PUBLISHING.md).
