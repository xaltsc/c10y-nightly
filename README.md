# Nix cache
The only purpose of this repo is to provide daily caches of upstream
Continuwuity. The repo also updates the caches whenever an update in `nixpkgs`
is detected.

The cache is available at
[`https://xaltsc-c10y.cachix.org`](https://xaltsc-c10y.cachix.org),
its public key is `xaltsc-c10y.cachix.org-1:8WuuzitAVZl+z9L94JH/tPoi8y7ny29bX2Ys07oDCBI=`.

In order to use it, point your `continuwuity` input to this repo `github:xaltsc/c10y`
as the hashes will change since a few things are added, notably, `nixpkgs` is updated,
on each daily reset.
