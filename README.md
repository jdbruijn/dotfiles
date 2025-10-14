# Dotfiles <!-- omit in toc -->

dotfiles, software and configurations for Linux and macOS.

- Install applications using [**Homebrew**][brew].
- Setup terminal environment with [**Starship**](https://starship.rs/).
- Manage tool versions using [**mise**](https://mise.jdx.dev/).
- Configure [**Zsh**][zsh] with useful plugins and aliases.
- Configure [**Neovim**][neovim] and [**Visual Studio Code**][vscode] as modern IDEs.
- Setup programming languages [**C**](https://www.c-language.org/), [**C++**](https://isocpp.org/), [**Go**](https://go.dev/), [**Lua**][lua], [**Rust**](https://rust-lang.org/) and [**TypeScript**](https://www.typescriptlang.org/).
- Automatically update [**Homebrew**][brew] applications _(macOS only)_.
- Configure macOS default settings _(macOS only)_.

---

[![Renovate enabled](https://img.shields.io/badge/Renovate-enabled-brightgreen?logo=renovatebot&logoColor&style=flat-square)](https://renovatebot.com)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079?style=flat-square)](https://github.com/semantic-release/semantic-release)
[![License](https://img.shields.io/github/license/jdbruijn/dotfiles?style=flat-square)](LICENSE.md)

- [Prerequisites](#prerequisites)
- [Install](#install)
- [Usage](#usage)
  - [Custom installation](#custom-installation)
  - [Custom **Homebrew** configurations](#custom-homebrew-configurations)
  - [Custom **Zsh** configurations](#custom-zsh-configurations)
  - [**Git** configuration](#git-configuration)
  - [Update](#update)
- [Contributing](#contributing)
- [Security policy](#security-policy)
- [License](#license)

## Prerequisites

The following list of prerequisites have to be met before you can install install these dotfiles.

1. The shell is Zsh.  
   The output of `echo $SHELL` should end with `zsh`, e.g. `/bin/zsh`. If this isn't the case, you can change the shell with e.g. `chsh -s /bin/zsh` and reopen the terminal to use the new shell.
2. The following software is installed and available in the `PATH`.
   - [**Git**][git], the `git` command in the terminal.
   - [**Rsync**](https://rsync.samba.org/), the `rsync` command in the terminal.
   - [**curl**](https://curl.se/), the `curl` command in the terminal.

## Install

> [!CAUTION]
> Use at your own risk! These dotfiles install software and update macOS settings. Always read the code and settings before using these dotfiles. These dotfiles are only tested and used on the latest macOS version.

Install the dotfiles using [**Git**][git] and the installation script. The dotfiles will be installed in `$HOME/.config/dotfiles` and linked to the `HOME` directory as needed. During the the synchronisation step of the installation, non-excluded files will be deleted from the destination directory, `$HOME/.config/dotfiles`, to prevent lingering dotfiles. Please see the [Usage](#usage) sections for customisations before installing.

```shell
$ git clone https://github.com/jdbruijn/dotfiles.git
$ cd dotfiles
$ ./install
```

Some manual steps might still be required, depending on your desired setup and configuration, after the installation. In the [`docs`](./docs/) directory there is documentation for the steps I have taken for my own configuration, which contains the following.

- [**Git**](./docs/git.md)
- [GPG](./docs/GPG.md)
- [SSH](./docs/SSH.md)
- [**macOS**](./docs/macOS.md)

## Usage

Using the [Install](#install) steps, you'll get exactly the setup I have myself. You can, however, add custom configurations to these dotfiles. The configurations can be extended using the [`custom/`](./custom/) directory, which will be synchronised to `$HOME/.config/dotfiles/custom/`, or directly in the `$HOME/.config/dotfiles/custom/` directory. Using either directory, the synchronisation step of the installation will honour your custom configuration and not delete any of the files in these directories. This means that files in the `$HOME/.config/dotfiles/custom/`directory will not be removed by the synchronisation, so you're responsible for removing files you no longer use.

### Custom installation

In the `custom/install` file, which must be executable, you can specify custom installation steps that will be run after all other installation steps. You can use this to install and configure additional software or change configurations, e.g. add different applications to the Dock as shown in the following example.

<details><summary>Custom installation example</summary>

```shell
#!/bin/sh

# Wipe all, default, app icons.
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Dock apps.
. "${DOTFILES}/macos/dock-app"
dock_app '/Applications/1Password.app'
dock_app '/Applications/Google Chrome.app'
dock_app "/Applications/Ghostty.app"
dock_app "/Applications/Notion.app"
dock_app '/Applications/Sequel Ace.app'
dock_app '/Applications/Visual Studio Code.app'

killall -q Dock
sleep 1
```

</details>

### Custom [**Homebrew**][brew] configurations

The [**Homebrew**][brew] configuration, specifically which packages are installed, can be customised using the [`custom`](./custom/) directory and the `DOTFILES_BREWFILE` environment variable. When the `DOTFILES_BREWFILE` environment variable is set when doing the [Install](#install), the [`homebrew/Brewfile`](./homebrew/Brewfile) file will not be used for the command to install [**Homebrew**][brew] packages and the file referenced by `DOTFILES_BREWFILE` will be used instead. This allows you to configure exactly which [**Homebrew**][brew] packages you want to install and where to install casks. The following list of packages are still required to be included in your custom list of [**Homebrew**][brew] packages. This is not enforced by the installation though. If you don't include these [**Homebrew**][brew] packages, you likely get errors and/or weird behaviour in the terminal.

- [`bat`](https://github.com/sharkdp/bat) - A `cat` clone with syntax highlighting and [**Git**][git] integration.
- [`cmake`](https://cmake.org/) - A powerful software build system, de-facto standard for building C++ code.
- [`eza`](https://github.com/eza-community/eza) - A modern replacement for `ls`.
- [`font-fira-code-nerd-font`](https://github.com/tonsky/FiraCode) - A free monospaced font with programming ligatures with [**Nerd Fonts**](https://www.nerdfonts.com/) patches.
- [`fzf`](https://github.com/junegunn/fzf) - A general-purpose command-line fuzzy finder.
- [`llvm`](https://llvm.org/) - A collection of modular and reusable compiler and toolchain technologies.
- [`lua-language-server`](https://github.com/LuaLS/lua-language-server) - A language server that offers [**Lua**][lua] language support.
- [`make`](https://www.gnu.org/software/make/) - A tool which controls the generation of executables and other non-source files of a program from the program's source.
- [`mise`](https://mise.jdx.dev/) - A development environment setup tool.
- [`ninja`](https://ninja-build.org/) - A small build system with a focus on speed, for use with CMake.
- [`prettierd`](https://github.com/fsouza/prettierd) - A daemon for [**Prettier**](https://prettier.io/), an opinionated code formatter.
- [`ripgrep`](https://github.com/BurntSushi/ripgrep/) - A line-oriented search tool that recursively searches the current directory for a regex pattern.
- [`starship`](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [`stylua`](https://github.com/JohnnyMorganz/StyLua) - An opinionated Lua code formatter.
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) - A smarter `cd` command.
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like fast/unobtrusive autosuggestions for [**Zsh**][zsh].
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish shell-like syntax highlighting for [**Zsh**][zsh].

For macOS, the following list of casks are still required to be included in your custom list of [**Homebrew**][homebrew] packages.

- [`raycast`](https://www.raycast.com/) cask - A collection of powerful productivity tools all within an extendable launcher.
- [`secretive`](https://secretive.dev/) cask - A fully native Mac app that lets you protect and manage SSH keys with your Mac's Secure Enclave.
- [`shottr`](https://shottr.cc/) cask - A tiny and fast mac screenshot tool with annotations, beautiful backgrounds, scrolling screenshots and cloud upload capabilities.

The following command is an example of using the `custom/homebrew/Brewfile` for the installation.

```shell
DOTFILES_BREWFILE="${HOME}/.config/dotfiles/custom/homebrew/Brewfile" ./install
```

### Custom [**Zsh**][zsh] configurations

The [**Zsh**][zsh] configuration can be extended using the [`custom/zsh/`](./custom/zsh/) directory, where you can place additional [**Zsh**][zsh] files. `path.zsh` files in the this directory are sourced at the beginning of the [**Zsh**][zsh] configuration. These files should only be used to export the `PATH`.

### [**Git**][git] configuration

For the [**Git**][git] user configuration, please create a new `.gitconfig.local` file in your home directory. You can use the [`git/.gitconfig.local`](./git/.gitconfig.local) file as a template and update it's contents.

### Update

To update the dotfiles, pull the latest changes and run the installation script again. The installation is idempotent, making it possible to use the installation script for updates as well. The `DOTFILES_SYNC_ONLY` environment variable can be set to skip all installation steps, including the [Custom installation](#custom-installation), and only synchronise the files.

```shell
$ git pull
$ ./install
# Alternative call of the install script, only synchronising the files.
$ DOTFILES_SYNC_ONLY=1 ./install
```

Formulae installed with [**Homebrew**][brew], including casks, will be automatically updated using [Homebrew Autoupdate](https://github.com/DomT4/homebrew-autoupdate/). If you do not wish to update casks automatically, you can add `unset HOMEBREW_UPGRADE_GREEDY` using the [Custom **Zsh** configurations](#custom-zsh-configurations).

## Contributing

Please [create an issue](https://github.com/jdbruijn/dotfiles/issues/new/choose) if you have a bug report or feature proposal, or [create a discussion](https://github.com/jdbruijn/dotfiles/discussions) if you have a question. If you like this project, please consider giving it a star ⭐

Refer to the [contributing guide](https://github.com/vidavidorra/.github/blob/main/CONTRIBUTING.md) for detailed information about other contributions, like pull requests.

[![Conventional Commits: 1.0.0](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow?style=flat-square)](https://conventionalcommits.org)
[![Code style](https://img.shields.io/badge/code_style-Prettier-ff69b4?logo=prettier&style=flat-square)](https://github.com/prettier/prettier)

## Security policy

Please refer to the [Security Policy on GitHub](https://github.com/jdbruijn/dotfiles/security/) for the security policy.

## License

This project is licensed under the [GPLv3 license](https://www.gnu.org/licenses/gpl.html).

Copyright © 2024-2025 Jeroen de Bruijn

<details><summary>License notice</summary>
<p>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.

The full text of the license is available in the [LICENSE](LICENSE.md) file in this repository and [online](https://www.gnu.org/licenses/gpl.html).

</details>

[brew]: https://brew.sh/
[git]: https://git-scm.com/
[lua]: https://www.lua.org/
[neovim]: https://neovim.io/
[vscode]: https://code.visualstudio.com/
[zsh]: https://www.zsh.org/
