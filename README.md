# cobra

[![CI](../../../actions/workflows/ci.yaml/badge.svg?label=CI&logo=forgejo&logoColor=white&style=flat-square)](../../../actions?workflow=ci.yaml)

A Command-Line Interface (CLI) in Go Built with [Cobra](https://github.com/spf13/cobra), Serving as a Template for Writing Testable CLI Applications.

## Installation

### Using Nix

If you have Nix with flakes enabled:

```bash
nix run git+https://codeberg.org/stefankuehnel/cobra -- <args>
```

Or install it to your profile:

```bash
nix profile add git+https://codeberg.org/stefankuehnel/cobra
```

### Using Go

```bash
go install codeberg.org/stefankuehnel/cobra@latest
```

### Building from Source

```bash
git clone https://codeberg.org/stefankuehnel/cobra.git
cd cobra
go build
```

## Development

This project uses [Task](https://taskfile.dev) as a task runner.

### Available Tasks

```bash
# Run default tasks (lint, build and test)
task

# Run project
task run -- <args>

# Build project
task build

# Format project
task format

# Lint project
task lint

# Test project
task test

# Test project with coverage
task test:coverage

# Clean project
task clean
```

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.