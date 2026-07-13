# Continuwuity Nix cache [![Nightly builds](https://github.com/xaltsc/c10y-nightly/actions/workflows/nightly.yaml/badge.svg)](https://github.com/xaltsc/c10y-nightly/actions/workflows/nightly.yaml) [![Watch nixpkgs updates](https://github.com/xaltsc/c10y-nightly/actions/workflows/watch-nixpkgs.yaml/badge.svg)](https://github.com/xaltsc/c10y-nightly/actions/workflows/watch-nixpkgs.yaml)
The only purpose of this repo is to provide daily caches of upstream Continuwuity.

New builds happen on two events:
- Each day, it checks for updates from Continuwuity repo, and builds it
- Every hour or so, it checks for updates from `nixos-unstable`. If it has been updated, new builds happen.

The cache is available at
[`https://xaltsc-c10y.cachix.org`](https://xaltsc-c10y.cachix.org),
its public key is `xaltsc-c10y.cachix.org-1:8WuuzitAVZl+z9L94JH/tPoi8y7ny29bX2Ys07oDCBI=`.

This repo acts like a `nightly` tag for Continuwuity.
In order to use it, point your `continuwuity` input to this repo `github:xaltsc/c10y-nightly` to be
sure to use a nightly cached version.

This flake reexposes Continuwuity's packages through `.packages`. These are the same ones as upstream.

A [`weekly`](https://github.com/xaltsc/c10y-nightly/releases/tag/weekly) tag is available for those
who want less nightly builds. Builds from this commit are pinned on cachix for a week.
