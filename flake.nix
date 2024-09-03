{
  inputs = { };
  outputs = { nixpkgs, ... }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages.x86_64-linux.default = pkgs.writeShellApplication {
        name = "template";
        text = ''
          cp -r ${./examples} .
        '';
      };
    };
}
