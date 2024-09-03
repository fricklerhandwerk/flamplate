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
          nix eval github:fricklerhandwerk/flamplate#value > value
          cp -r ${./examples} examples
        '';
      };
      value = 1;
    };
}
