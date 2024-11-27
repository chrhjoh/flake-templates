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
        python-venv = {
          description = "Python Template using venv";
          path = ./python-venv;
        };
        python-poetry = {
          description = "Python Template using venv";
          path = ./python-poetry;
        };
        julia = {
          description = "Julia Template";
          path = ./julia;
        };
      };

    };
}
