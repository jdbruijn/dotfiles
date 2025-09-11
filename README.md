# Dotfiles <!-- omit in toc -->

dotfiles, software and configurations for Linux and macOS.

- Install applications, using [**Homebrew**](https://brew.sh/).
- Setup terminal environment with [**Starship**](https://starship.rs/).
- Configure macOS default settings.

---

[![Renovate enabled](https://img.shields.io/badge/Renovate-enabled-brightgreen?logo=renovatebot&logoColor&style=flat-square)](https://renovatebot.com)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079?style=flat-square)](https://github.com/semantic-release/semantic-release)
[![License](https://img.shields.io/github/license/vidavidorra/dotfiles?style=flat-square)](LICENSE.md)

- [Install](#install)
- [Usage](#usage)
- [Contributing](#contributing)
- [Security policy](#security-policy)
- [License](#license)

## Install

> [!CAUTION]
> Use at your own risk! These dotfiles install software and update macOS settings. Always read the code and settings before using these dotfiles.

Install the dotfiles using Git and the bootstrap script.

```shell
$ git clone https://github.com/vidavidorra/dotfiles.git
$ cd dotfiles
$ ./install
```

> [!NOTE]
> These dotfiles are used with macOS Sonoma. So, there is no guarantee that these work on any other macOS versions.

## Usage

To update the dotfiles locally, pull the latest changes from GitHub and run the bootstrap script again.

```shell
$ git pull
$ ./install
```

## Contributing

Please [create an issue](https://github.com/vidavidorra/dotfiles/issues/new/choose) if you have a bug report or feature proposal, or [create a discussion](https://github.com/vidavidorra/dotfiles/discussions) if you have a question. If you like this project, please consider giving it a star ⭐

Refer to the [contributing guide](https://github.com/vidavidorra/.github/blob/main/CONTRIBUTING.md) for detailed information about other contributions, like pull requests.

[![Conventional Commits: 1.0.0](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow?style=flat-square)](https://conventionalcommits.org)
[![Code style](https://img.shields.io/badge/code_style-Prettier-ff69b4?logo=prettier&style=flat-square)](https://github.com/prettier/prettier)

## Security policy

Please refer to the [Security Policy on GitHub](https://github.com/vidavidorra/dotfiles/security/) for the security policy.

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
