let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};

in pkgs.buildEnv {
  name = "alertmanager-sentry-gateway-env";
  paths = with pkgs; [
    go
    go-task
  ];
}
