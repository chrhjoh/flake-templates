{
  description = "Collection of Nix flake templates for various environments";

  outputs =
    { self, nixpkgs, ... }:
    {
      templates = {
        rust = {
          description = "Rust Template";
          path = ./rust;
        };
        python = {
          description = "Python Template using venv";
          path = ./python;
        };
        julia = {
          description = "Julia Template";
          path = ./julia;
        };
      };

    };
}
