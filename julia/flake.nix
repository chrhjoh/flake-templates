{
  description = "Julia development environment";

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
          name = "julia";
          packages = with pkgs; [
            julia-bin
          ];

        };
      });
    };
}
