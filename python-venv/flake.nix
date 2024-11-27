{
  description = "Python development environment";
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let

      forAllSystems =
        function:
        nixpkgs.lib.genAttrs [
          "x86_64-linux"
          "aarch64-darwin"
        ] (system: function nixpkgs.legacyPackages.${system});
    in

    {

      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          name = "python-venv";
          packages = with pkgs; [
            python3
          ];
          shellHook = ''
            if [ ! -d ".venv" ]; then
              python -m venv .venv
            fi
            source .venv/bin/activate
          '';

        };
      });
    };
}
