# Dotfiles <!-- omit in toc -->

dotfiles, software and configurations for Linux and macOS.

- Install applications using [**Homebrew**](https://brew.sh/).
- Setup terminal environment with [**Starship**](https://starship.rs/).
- Manage tool versions using [**mise**](https://mise.jdx.dev/).
- Configure macOS default settings.

---

[![Renovate enabled](https://img.shields.io/badge/Renovate-enabled-brightgreen?logo=renovatebot&logoColor&style=flat-square)](https://renovatebot.com)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079?style=flat-square)](https://github.com/semantic-release/semantic-release)
[![License](https://img.shields.io/github/license/jdbruijn/dotfiles?style=flat-square)](LICENSE.md)

- [Prerequisites](#prerequisites)
- [Install](#install)
- [Usage](#usage)
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

Install the dotfiles using Git and the installation script. The dotfiles will be installed in `$HOME/.config/dotfiles` and linked to the `HOME` directory as needed. During the the synchronisation step of the installation, non-excluded files will be deleted from the destination directory, `$HOME/.config/dotfiles`, to prevent lingering dotfiles. Please see the [Usage](#usage) sections for customisations before installing.

```shell
$ git clone https://github.com/jdbruijn/dotfiles.git
$ cd dotfiles
$ ./install
```

Some manual steps might still be required, depending on your desired setup and configuration, after the installation. In the [`docs`](./docs/) directory there is documentation for the steps I have taken for my own configuration, which contains the following.

- [GPG](./docs/GPG.md)
- [SSH](./docs/SSH.md)
- [macOS](./docs/macOS.md)

## Usage

Using the [Install](#install) steps, you'll get exactly the setup I have myself. If you want to include some custom configurations, those are described in more detail in the following sections. In the [Update](#update) section, the manual update procedure is explained. Other than that, there is no specific usage of these dotfiles.

### Custom [**Homebrew**][brew] configurations

The [**Homebrew**][brew] configuration, specifically which packages are installed, can be customised using the [`custom`](./custom/) directory and the `DOTFILES_BREWFILE` environment variable. When the `DOTFILES_BREWFILE` is set when doing the [Install](#install), the [`homebrew/Brewfile`](./homebrew/Brewfile) file will not be used for the command to install [**Homebrew**][brew] packages and the file referenced by `DOTFILES_BREWFILE` will be used instead. This allows you to configure exactly which [**Homebrew**][brew] packages you want to install and where to install casks. The following list of packages are still required to be included in your custom list of [**Homebrew**][brew] packages. This is not enforced by the installation though. If you don't include these [**Homebrew**][brew] packages, you likely get errors and/or weird behaviour in the terminal.

- [`bat`](https://github.com/sharkdp/bat) - A `cat` clone with syntax highlighting and [**Git**][git] integration.
- [`eza`](https://github.com/eza-community/eza) - A modern replacement for `ls`.
- [`fzf`](https://github.com/junegunn/fzf) - A general-purpose command-line fuzzy finder.
- [`mise`](https://mise.jdx.dev/) - A development environment setup tool.
- [`starship`](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell!
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) - A smarter `cd` command.
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions) - Fish-like fast/unobtrusive autosuggestions for Zsh.
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish shell-like syntax highlighting for Zsh.
- [`raycast`](https://www.raycast.com/) cask - A collection of powerful productivity tools all within an extendable launcher.
- [`shottr`](https://shottr.cc/) cask - A tiny and fast mac screenshot tool with annotations, beautiful backgrounds, scrolling screenshots and cloud upload capabilities.

The following command is an example of using the `custom/homebrew/Brewfile` for the installation.

```shell
DOTFILES_BREWFILE="${HOME}/.config/dotfiles/custom/homebrew/Brewfile" ./install
```

### Custom [**Zsh**][zsh] configurations

The [**Zsh**][zsh] configuration can be extended using the [`custom/zsh/`](./custom/zsh/) directory. You can place additional [**Zsh**][zsh] files in [`custom/zsh/`](./custom/zsh/) directory of the cloned repository, which will be synchronised to `$HOME/.config/dotfiles/custom/zsh`, or directly in the `$HOME/.config/dotfiles/custom/zsh/` directory. Using either directory for the custom [**Zsh**][zsh] configuration, the synchronisation step of the installation will honour your custom configuration and not delete any of the files in this directory.

`path.zsh` files in the custom configuration are sourced at the beginning of the [**Zsh**][zsh] configuration. These files should only be used to export the `PATH`.

### [**Git**][git] configuration

For the [**Git**][git] user configuration, please create a new `.gitconfig.local` file in your home directory. You can use the [`git/.gitconfig.local`](./git/.gitconfig.local) file as a template and update it's contents.

### Update

To update the dotfiles, pull the latest changes and run the installation script again. The installation is idempotent, making it possible to use the installation script for updates as well.

```shell
$ git pull
$ ./install
```

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
[zsh]: https://www.zsh.org/
