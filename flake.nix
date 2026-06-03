{
  description = "A weekly-updated pin of nixpkgs-unstable.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  # Re-export nixpkgs so this flake can be used much like a pinned nixpkgs input.
  outputs = inputs: inputs.nixpkgs;
}
