# Import the pinned nixpkgs revision from flake.lock.
#
# This keeps the flake usable like nixpkgs as a plain import, e.g.:
#   import inputs.nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; }
args:
let
  lock = builtins.fromJSON (builtins.readFile ./flake.lock);
  locked = lock.nodes.nixpkgs.locked;

  # builtins.fetchTree accepts the same locked tree fields used by flakes.
  nixpkgs = builtins.fetchTree locked;
in
import nixpkgs args
