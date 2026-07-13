{
  inputs = {
    c10y = {
      url = "git+https://forgejo.ellis.link/continuwuation/continuwuity";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      perSystem = { inputs', ... }: {
        inherit (inputs'.c10y) packages;
      };

    };
}
