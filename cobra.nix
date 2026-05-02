{
  lib,
  buildGoModule,
}:

buildGoModule rec {
  pname = "cobra";
  version = "1.0.0";

  # See: https://nix.dev/guides/best-practices#reproducible-source-paths
  src = builtins.path {
    path = ./.;
    name = "cobra";
  };

  # The vendorHash is a SHA-256 hash of the vendored dependencies, used for reproducible builds.
  # 
  # How to update:
  #   1. Run 'go mod vendor'
  #   2. Run 'nix hash path --sri vendor/'
  vendorHash = "sha256-9jK3jKbFp+5WSQfMbNzwIB55bC5KScZOaFHItffTF00=";

  # Inject version at build time via ldflags
  ldflags = [
    "-s"
    "-w"
    "-X=codeberg.org/stefankuehnel/cobra/cmd.version=${version}"
  ];

  meta = with lib; {
    description = "A Command-Line Interface (CLI) in Go Built with Cobra, Serving as a Template for Writing Testable CLI Applications.";
    homepage = "https://codeberg.org/stefankuehnel/cobra";
    license = licenses.gpl3;
    mainProgram = "cobra";
    maintainers = [
      {
        name = "Stefan Kühnel";
        email = "git@stefankuehnel.com";
      }
    ];
  };
}
