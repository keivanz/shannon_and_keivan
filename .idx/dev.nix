{ pkgs, ... }: {

  # NOTE: This is an excerpt of a complete Nix configuration example.
  # For more information about the dev.nix file in Firebase Studio, see
  # https://firebase.google.com/docs/studio/customize-workspace

  # Add ruby and bundler to the environment
  packages = [
    pkgs.ruby
    pkgs.bundler
    pkgs.gcc
    pkgs.gnumake
  ];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = {
      # The following object sets web previews
      web = {
        command = [
          "bundle"
          "exec"
          "jekyll"

          "serve"
          "--host"
          "0.0.0.0"
          "--port"
          "$PORT"
        ];
        manager = "web";
      };
    };
  };
}
