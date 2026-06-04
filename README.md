# nixpkgs-weekly
A tiny flake that tracks `nixpkgs-unstable`, but only advances once per week. It's meant to mimic [DeterminateSystems/nixpkgs-weekly](https://flakehub.com/flake/DeterminateSystems/nixpkgs-weekly).

We pin a `nixpkgs-unstable` revision and edit it via a Github action.

## Usage
```nix
inputs.nixpkgs.url = "github:peachey2k2/nixpkgs-weekly";
```

You can also import it like regular nixpkgs and pass configuration:

```nix
let
  pkgs = import inputs.nixpkgs {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in
# ...
```
