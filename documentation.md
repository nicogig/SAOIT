# `sampctl`

1.7.6 - Southclaws <hello@southcla.ws>

The Swiss Army Knife of SA:MP - vital tools for any server owner or library maintainer.

## Commands (6)

### `sampctl server`

Usage: `sampctl server <subcommand>`

For managing servers and runtime configurations.

#### Subcommands (4)

### `sampctl server init`

Usage: `sampctl server init`

Bootstrap a new SA:MP server and generates a `samp.json`/`samp.yaml` configuration based on user input. If `gamemodes`, `filterscripts` or `plugins` directories are present, you will be prompted to select relevant files.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--version value`: the SA:MP server version to use (default: "0.3.7")
- `--dir value`: working directory for the server - by default, uses the current directory (default: ".")

### `sampctl server download`

Usage: `sampctl server download`

Downloads the files necessary to run a SA:MP server to the current directory (unless `--dir` specified). Will download the latest stable (non RC) server version unless `--version` is specified.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--version value`: the SA:MP server version to use (default: "0.3.7")
- `--dir value`: working directory for the server - by default, uses the current directory (default: ".")

### `sampctl server ensure`

Usage: `sampctl server ensure`

Ensures the server environment is representative of the configuration specified in `samp.json`/`samp.yaml` - downloads server binaries and plugin files if necessary and generates a `server.cfg` file.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the server - by default, uses the current directory (default: ".")
- `--noCache --forceEnsure`: forces download of plugins if --forceEnsure is set

### `sampctl server run`

Usage: `sampctl server run`

Generates a `server.cfg` file based on the configuration inside `samp.json`/`samp.yaml` then executes the server process and automatically restarts it on crashes.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the server - by default, uses the current directory (default: ".")
- `--container`: starts the server as a Linux container instead of running it in the current directory
- `--mountCache --container`: if --container is set, mounts the local cache directory inside the container
- `--noCache`: forces download of plugins


---

### `sampctl package`

Usage: `sampctl package <subcommand>`

For managing Pawn packages such as gamemodes and libraries.

#### Subcommands (7)

### `sampctl package init`

Usage: `sampctl package init`

Helper tool to bootstrap a new package or turn an existing project into a package.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the project - by default, uses the current directory (default: ".")

### `sampctl package ensure`

Usage: `sampctl package ensure`

Ensures dependencies are up to date based on the `dependencies` field in `pawn.json`/`pawn.yaml`.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the project - by default, uses the current directory (default: ".")

### `sampctl package install`

Usage: `sampctl package install [package definition]`

Installs a new package by adding it to the `dependencies` field in `pawn.json`/`pawn.yaml` downloads the contents.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the project - by default, uses the current directory (default: ".")
- `--dev`: for specifying dependencies only necessary for development or testing of the package

### `sampctl package get`

Usage: `sampctl package get [package definition] (target path)`

Clones a GitHub package to either a directory named after the repo or, if the cwd is empty, the cwd and then ensures the package.

#### Flags

- `--verbose`: output all detailed information - useful for debugging

### `sampctl package build`

Usage: `sampctl package build [build name]`

Builds a package defined by a `pawn.json`/`pawn.yaml` file.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the project - by default, uses the current directory (default: ".")
- `--build value`: build configuration to use
- `--forceEnsure`: forces dependency ensure before build
- `--dryRun`: does not run the build but outputs the command necessary to do so
- `--watch`: keeps sampctl running and triggers builds whenever source files change
- `--buildFile value`: declares a file to store the incrementing build number for easy versioning
- `--relativePaths`: force compiler output to use relative paths instead of absolute

### `sampctl package run`

Usage: `sampctl package run`

Compiles and runs a package defined by a `pawn.json`/`pawn.yaml` file.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--version value`: the SA:MP server version to use (default: "0.3.7")
- `--dir value`: working directory for the server - by default, uses the current directory (default: ".")
- `--container`: starts the server as a Linux container instead of running it in the current directory
- `--mountCache --container`: if --container is set, mounts the local cache directory inside the container
- `--build --forceBuild`: build configuration to use if --forceBuild is set
- `--forceBuild`: forces a build to run before executing the server
- `--forceEnsure --forceBuild`: forces dependency ensure before build if --forceBuild is set
- `--noCache --forceEnsure`: forces download of plugins if --forceEnsure is set
- `--watch`: keeps sampctl running and triggers builds whenever source files change
- `--buildFile value`: declares a file to store the incrementing build number for easy versioning
- `--relativePaths`: force compiler output to use relative paths instead of absolute

### `sampctl package template`

Usage: `sampctl package template <subcommand>`

Provides commands for package templates

#### Subcommands (3)

### `sampctl package template make`

Usage: `sampctl package template make [name]`

Creates a template package from the current directory if it is a package.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--dir value`: working directory for the package - by default, uses the current directory (default: ".")

### `sampctl package template build`

Usage: `sampctl package template build [template] [filename]`

Builds the specified file in the context of the given template.

#### Flags

- `--verbose`: output all detailed information - useful for debugging

### `sampctl package template run`

Usage: `sampctl package template run [template] [filename]`

Builds and runs the specified file in the context of the given template.

#### Flags

- `--verbose`: output all detailed information - useful for debugging
- `--version value`: the SA:MP server version to use (default: "0.3.7")
- `--mode value`: runtime mode, one of: server, main, y_testing (default: "main")



---

### `sampctl version`

Show version number - this is also the version of the container image that will be used for `--container` runtimes.

---

### `sampctl completion`

output bash autocomplete code

---

### `sampctl docs`

Usage: `sampctl docs > documentation.md`

Generate documentation in markdown format and print to standard out.

---

### `sampctl help`

Usage: `Shows a list of commands or help for one command`

---

## Global Flags

- `--verbose`: output all detailed information - useful for debugging
- `--help, -h`: show help
- `--appVersion, -V`: sampctl version


