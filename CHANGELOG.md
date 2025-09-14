## [1.9.0](https://github.com/jdbruijn/dotfiles/compare/v1.8.0...v1.9.0) (2025-09-14)

### Features

- **brew:** add `openssh` ([a699ea0](https://github.com/jdbruijn/dotfiles/commit/a699ea0b651807ad017ae47d8ae6a976bbe22847))
- **vscode:** add spell checker ([6e02110](https://github.com/jdbruijn/dotfiles/commit/6e021108a1ffc6aaad1d3b34fea390c79b208fbc))
- **vscode:** use Catppuccin colour and icon theme ([be9ad61](https://github.com/jdbruijn/dotfiles/commit/be9ad61722a2e1ee911792609db2f9989c28828a))
- **zsh:** add `custom` directory for custom Zsh configuration ([f9e8abc](https://github.com/jdbruijn/dotfiles/commit/f9e8abc94d3fb6a42af3e4f31cc404fef67a50b3))

### Bug Fixes

- **install:** delete non-existing dotfiles in the destination during the sync ([da6866c](https://github.com/jdbruijn/dotfiles/commit/da6866c719b4bc49c9e1c7d8ece542395f5bd5e3))
- **vscode:** remove dotenv cloaking config, which is probably not needed ([d6f114b](https://github.com/jdbruijn/dotfiles/commit/d6f114b2a406f61e8a758f9e7525c86c03447935))
- **vscode:** set default formatter for Markdown to Prettier ([c687dad](https://github.com/jdbruijn/dotfiles/commit/c687dadaf60dc562f20187e97e562f0fc0b4d17e))
- **zsh:** add explicit `-Uz` options to autoload, which are both added impicitly anyways ([dd83e9b](https://github.com/jdbruijn/dotfiles/commit/dd83e9b06fccd970850d14a7e7f17b3ea9cb56b6))
- **zsh:** append the Rust paths instead of prepending it ([ca4fc99](https://github.com/jdbruijn/dotfiles/commit/ca4fc9935c6c7d4f4f22c86d65e0cd350944aee8))
- **zsh:** explicitly use `code` for the VSCode aliases ([7142fc9](https://github.com/jdbruijn/dotfiles/commit/7142fc9ad04c252175ec38506f3c3700487dd782))

### Documentation

- add documentation for GPG and SSH setup ([fff4e24](https://github.com/jdbruijn/dotfiles/commit/fff4e2467ce30efd263f3d5833c9d515eee670e6))

## [1.8.0](https://github.com/jdbruijn/dotfiles/compare/v1.7.0...v1.8.0) (2025-09-13)

### Features

- **git:** sign tags with GPG ([8f380f1](https://github.com/jdbruijn/dotfiles/commit/8f380f11139f7aa0108dfd576c7a4ca3889d9b7e))

## [1.7.0](https://github.com/jdbruijn/dotfiles/compare/v1.6.0...v1.7.0) (2025-09-13)

### Features

- add rust toolchain installation ([6106f1a](https://github.com/jdbruijn/dotfiles/commit/6106f1aedc00104b7a50dd7be630554889272d9b))
- replace `gpg-suite` with `gnupg` ([320e29c](https://github.com/jdbruijn/dotfiles/commit/320e29c20077d02aa711fe07b1db7fa88c608a61))
- **zsh:** add git `git_current_branch` function ([92361e0](https://github.com/jdbruijn/dotfiles/commit/92361e0b4ee412a680cb0f0311c94a0f205398c4))

### Bug Fixes

- **rust:** add toolchains to path ([7040a6a](https://github.com/jdbruijn/dotfiles/commit/7040a6a3610e6abe7bcb9f60172d4e9ffdca2bc0))

## [1.6.0](https://github.com/jdbruijn/dotfiles/compare/v1.5.0...v1.6.0) (2025-09-12)

### Features

- add Docker file, with dotfiles intalled in Ubuntu ([e7b61ff](https://github.com/jdbruijn/dotfiles/commit/e7b61ff447527006a412bec7d816704b86e3e670))
- **bootstrap:** make installations under non-macOS possible ([924bd0f](https://github.com/jdbruijn/dotfiles/commit/924bd0f64b9b6140ec86ae53bc74cf81088bf2a8))
- **brew:** move Homebrew bundle and installation to its own subdirectory ([9ca0343](https://github.com/jdbruijn/dotfiles/commit/9ca0343f0817ae27724702fc94e89de44a05fcbb))
- **brew:** removed unused software and VSCode extensions ([6ee447b](https://github.com/jdbruijn/dotfiles/commit/6ee447be0667ecff2003fa77374e16f6ce8ac004))
- **brew:** replace Google Chrome with Brave ([a2f84a9](https://github.com/jdbruijn/dotfiles/commit/a2f84a97eac74532bd377c51aab6169dbedaff8a))
- **git:** enable rerere "reuse recorded resolution" ([52b3be0](https://github.com/jdbruijn/dotfiles/commit/52b3be08bfe138952d7dfc748e6cc16d30ece928))
- **git:** update ignores from gitignore.io and remove unnecessary global languages and tools ([abaa41e](https://github.com/jdbruijn/dotfiles/commit/abaa41e10932f8040254e4a7bc7afda61bb1b452))
- **install:** add VSCode settings file to the right location under Linux ([673994e](https://github.com/jdbruijn/dotfiles/commit/673994e71eb2a9c067291df571bde68cb4f10fe5))
- **install:** move files from `$HOME/.dotfiles` to `$HOME/.config/dotfiles` ([7b12049](https://github.com/jdbruijn/dotfiles/commit/7b12049e46618cb03cfd218f356cc1a8879beddf))
- **install:** rename `bootstrap` to `install` ([0b91514](https://github.com/jdbruijn/dotfiles/commit/0b91514a5d026420a868f19543022ec772b21b09))
- remove Python, which I no longer use ([55e17ad](https://github.com/jdbruijn/dotfiles/commit/55e17ad40801931ea64a4f9ca2c19e830eb7741d))
- replace iTerm2 with Ghostty ([15e43d0](https://github.com/jdbruijn/dotfiles/commit/15e43d060b6b36ab69d1e935b1ff57302ab1f19b))
- replace Oh My Zsh with Starship ([b660ea9](https://github.com/jdbruijn/dotfiles/commit/b660ea948d14119295973a48b1568396d1d57367))
- **starship:** add time and exit code to the prompt ([fc8a0e1](https://github.com/jdbruijn/dotfiles/commit/fc8a0e116489dcf3f0b6262eb7331d191c52b902))
- **zsh:** add aliases for docker, docker-desktop, git, isodate and vscode ([c2cd019](https://github.com/jdbruijn/dotfiles/commit/c2cd0197ab75280c4f0ba94099a1c6e57f6a2d59))

### Bug Fixes

- **bootstrap:** clarify output by indenting sub-installation outputs ([809df74](https://github.com/jdbruijn/dotfiles/commit/809df746ac16c8e6600d1ce9bfc176aef917cc5b))
- **brew:** add `brew` to the path, so it can be used in the install scripts ([35cbe6e](https://github.com/jdbruijn/dotfiles/commit/35cbe6ee3501656983467f60cf59c2bf4b310171))
- **brew:** remove taps that have been moved to core ([cb28262](https://github.com/jdbruijn/dotfiles/commit/cb28262be36811275f4b07c3177d9004e146cb6d))
- **git:** move SSH to local git configuration ([e9512e2](https://github.com/jdbruijn/dotfiles/commit/e9512e2d701a26b5ec5eecb78489d14578e7b407))
- **macos:** remove need for sudo by not killing applications ([7ee043b](https://github.com/jdbruijn/dotfiles/commit/7ee043bac787091e2df16b767f80b9687274c96a))
- **nodejs:** export `NVM_DIR` for the nvm and Node.js installation ([0cbd95a](https://github.com/jdbruijn/dotfiles/commit/0cbd95adc1b57d63053683e07e4f796f68a21876))
- **nodejs:** install the Node.js version manager, `nvm`, using its install script ([0a1e333](https://github.com/jdbruijn/dotfiles/commit/0a1e333fdc95d2e49e15bef54b28ab31bbe73196))
- **zsh:** remove powerlevel10k remains ([2b6ac25](https://github.com/jdbruijn/dotfiles/commit/2b6ac2538655d00f912ee20123eb6042aa46e939))
- **zsh:** use `HOMEBREW_PREFIX` for the Homebrew path ([355bbed](https://github.com/jdbruijn/dotfiles/commit/355bbedc1ab7f12c7e40c5f40bf543f3abc260f2))

## [1.5.0](https://github.com/jdbruijn/dotfiles/compare/v1.4.0...v1.5.0) (2025-06-07)

### Features

- **brew:** remove Magnet, use Raycast's built-in window management instead ([1f80bd7](https://github.com/jdbruijn/dotfiles/commit/1f80bd76c8d34a07d82408360bf5c52bf4cca545))
- **brew:** replace Greenshot with Shottr, which is free and has a better editor ([0e6ff0a](https://github.com/jdbruijn/dotfiles/commit/0e6ff0a1ebd0c903a4798fcc4b08e26e5ba0a7ab))
- **brew:** replace iTerm2 with the beta version ([51fcc21](https://github.com/jdbruijn/dotfiles/commit/51fcc211cc4a506e2522260d0a9f3ccc54247527))
- **brew:** replace Veracrypt with the FUSE-T variant, and of course replace macFUSE with FUSE-T ([18eb555](https://github.com/jdbruijn/dotfiles/commit/18eb5552fe16f39ad82c781041dd503a1360a819))
- **brew:** use Raycast instead of Alfred ([7a0fca3](https://github.com/jdbruijn/dotfiles/commit/7a0fca3e304ec7166fd97dc1169f4088491fe685))

### Bug Fixes

- **brew:** remove Kap as I haven't used it in over a year ([d4ebbc9](https://github.com/jdbruijn/dotfiles/commit/d4ebbc90b27e0f94c77a7acb8bf8deeb13d103a7))
- remove Amphetamine as Raycast has the Coffee extension ([bd30935](https://github.com/jdbruijn/dotfiles/commit/bd30935930ddbbac41af73cc93da6c0c19d60917))

## [1.4.0](https://github.com/jdbruijn/dotfiles/compare/v1.3.1...v1.4.0) (2024-10-04)

### Features

- **brew:** add ChatGPT ([ec084b1](https://github.com/jdbruijn/dotfiles/commit/ec084b1cfe7cf8a0acd865d799068be6c48319b1))

## [1.3.1](https://github.com/jdbruijn/dotfiles/compare/v1.3.0...v1.3.1) (2024-09-25)

### Bug Fixes

- remove undesired `work_in_progress` function from the `git` plugin ([8c773d6](https://github.com/jdbruijn/dotfiles/commit/8c773d69097961b730cb0e1c2728fea18c5ebf44))

## [1.3.0](https://github.com/jdbruijn/dotfiles/compare/v1.2.0...v1.3.0) (2024-05-28)

### Features

- **vscode:** associate `.mdx` files with the Markdown language ([a83a309](https://github.com/jdbruijn/dotfiles/commit/a83a30900cb28cfb602e15bc6b5ec363e112d5e8))

## [1.2.0](https://github.com/jdbruijn/dotfiles/compare/v1.1.0...v1.2.0) (2024-05-28)

### Features

- **brew:** add Adobe Acrobat Reader ([765136b](https://github.com/jdbruijn/dotfiles/commit/765136b9a08ccfc6bc69aa56eae8704519934acc))

## [1.1.0](https://github.com/jdbruijn/dotfiles/compare/v1.0.0...v1.1.0) (2024-05-16)

### Features

- **brew:** add `balenaetcher` ([dfe44c9](https://github.com/jdbruijn/dotfiles/commit/dfe44c93e8eedbdf3736be021036d7a7e4067c58))

## 1.0.0 (2024-05-11)

### Features

- add `.gitconfig` to linked dotfiles ([356af93](https://github.com/jdbruijn/dotfiles/commit/356af937ed71fc10309f04d1d8300be00cdff5a8))
- add `httpie` ([c02d996](https://github.com/jdbruijn/dotfiles/commit/c02d99636ce9c3fe857949a5f6dc057e36382bd8))
- add `NO_MACOS` option, to skip setting macOS preferences ([958fc15](https://github.com/jdbruijn/dotfiles/commit/958fc15710820abcfa263a4ff364e29d91425a9e))
- add `zoxide` ([2fdfa1a](https://github.com/jdbruijn/dotfiles/commit/2fdfa1ae57c22a9220882b086f80be3397afd46b))
- add 1Password CLI ([8b9e460](https://github.com/jdbruijn/dotfiles/commit/8b9e4605475e8c761b0c77440a6ad593fa522adf))
- add AltTab, used for window switching ([3b6c484](https://github.com/jdbruijn/dotfiles/commit/3b6c48430e041a0a1af6be977138cf857cb6a021))
- add global Node.js packages ([500b868](https://github.com/jdbruijn/dotfiles/commit/500b8689e3210d2a5e430a4afba31a6c5f954f46))
- add global Python packages ([d70a5ac](https://github.com/jdbruijn/dotfiles/commit/d70a5ac17b94ef556f435ad04a0145c129d68a86))
- add initial dotfiles ([9f4965b](https://github.com/jdbruijn/dotfiles/commit/9f4965b73639b5b02c48d01f3e1e6db2ea3180ce))
- add Steam ([8369bcd](https://github.com/jdbruijn/dotfiles/commit/8369bcdfe4edf979392ab05523e89518ed4b2db7))
- **alias:** add `glolnc` alias to show commits without chores ([f5adca9](https://github.com/jdbruijn/dotfiles/commit/f5adca93fcefb90a4e9dbb3cb293cd383ac60868))
- **brew:** add `pipx`, with its `PATH`, and `python@3.12` ([0cb09bd](https://github.com/jdbruijn/dotfiles/commit/0cb09bdd85f290ee2f5e6766b87c65e3dd3674d8))
- **brew:** add Beekeeper Studio ([6c5f60d](https://github.com/jdbruijn/dotfiles/commit/6c5f60d458e3ca4df1efb010344731a29e305ea8))
- **vscode:** add GitHub extensions ([1a4723b](https://github.com/jdbruijn/dotfiles/commit/1a4723be23d85f09b99d3707bb7c2e1acd46268d))
- **vscode:** add Selected Lines Count extension ([6bf4bb8](https://github.com/jdbruijn/dotfiles/commit/6bf4bb80e51ae329d0fe6e38e1a2d4208516b2a0))
- **vscode:** auto switch theme, using `Solarized Light` for the light theme ([71e37f2](https://github.com/jdbruijn/dotfiles/commit/71e37f2a71b7ed5f36d49c06ae023292ef39dbca))
- **vscode:** enable XO for formatting ([a955511](https://github.com/jdbruijn/dotfiles/commit/a9555111804542f1a358100c5261352c2aca3c4a))

### Bug Fixes

- **alias:** use `lsd` instead of `ls` ([d1c1831](https://github.com/jdbruijn/dotfiles/commit/d1c1831c31543aa17c846777e65a9299c80f3041))
- **brew:** install wireshark as cask to get the UI in addition to the CLI ([b445963](https://github.com/jdbruijn/dotfiles/commit/b445963986560953e5febc39b79937dc4988ee77))
- clarify warning message for existing symlink ([a70eb5b](https://github.com/jdbruijn/dotfiles/commit/a70eb5b2342ae300006ced628fb39e5008bd0d09))
- clarify warning message for symlink failure ([b44556c](https://github.com/jdbruijn/dotfiles/commit/b44556cba2c4c96e10643cdca4fa9f6e85ad086b))
- **nodejs:** silently install packages to reduce useless console output ([d900864](https://github.com/jdbruijn/dotfiles/commit/d9008647fcbf3237b4ebdcf69223a777eba0ee4e))
- **rust:** add cargo to `PATH` ([8a5a470](https://github.com/jdbruijn/dotfiles/commit/8a5a470b27816773ab5d7949b232e58af16cd461))
- **vscode:** remove `rust-syntax` as syntax is already included in `rust-analyzer` ([5eb069d](https://github.com/jdbruijn/dotfiles/commit/5eb069d3d82dbd2104e37fa5f40fc007cf472462))

### Documentation

- add basic usage ([a4f3eb0](https://github.com/jdbruijn/dotfiles/commit/a4f3eb0493aa1f8d8a41bac8948a981a078d331f))
- add bullet points ([978c5b9](https://github.com/jdbruijn/dotfiles/commit/978c5b990d9ffce67c48e3e9ac05f62d89db3d28))
- add installation remark, at your own risk ([b284d7f](https://github.com/jdbruijn/dotfiles/commit/b284d7fd43ac4ef232d05b4c879f603a924f0045))

### Styles

- format Homebrew install command ([1d594b7](https://github.com/jdbruijn/dotfiles/commit/1d594b7aaec8bae4c3649589d8e2efb1b1b53080))
- format readme ([e4c7f73](https://github.com/jdbruijn/dotfiles/commit/e4c7f73ccd564e89f08b64fad33b229fd8a40140))

## [1.0.0-beta.5](https://github.com/jdbruijn/dotfiles/compare/v1.0.0-beta.4...v1.0.0-beta.5) (2024-05-11)

### Documentation

- add basic usage ([a4f3eb0](https://github.com/jdbruijn/dotfiles/commit/a4f3eb0493aa1f8d8a41bac8948a981a078d331f))

## [1.0.0-beta.4](https://github.com/jdbruijn/dotfiles/compare/v1.0.0-beta.3...v1.0.0-beta.4) (2024-05-10)

### Features

- **vscode:** add Selected Lines Count extension ([6bf4bb8](https://github.com/jdbruijn/dotfiles/commit/6bf4bb80e51ae329d0fe6e38e1a2d4208516b2a0))

## [1.0.0-beta.3](https://github.com/jdbruijn/dotfiles/compare/v1.0.0-beta.2...v1.0.0-beta.3) (2024-05-08)

### Features

- add global Python packages ([d70a5ac](https://github.com/jdbruijn/dotfiles/commit/d70a5ac17b94ef556f435ad04a0145c129d68a86))
- **brew:** add `pipx`, with its `PATH`, and `python@3.12` ([0cb09bd](https://github.com/jdbruijn/dotfiles/commit/0cb09bdd85f290ee2f5e6766b87c65e3dd3674d8))

### Bug Fixes

- clarify warning message for existing symlink ([a70eb5b](https://github.com/jdbruijn/dotfiles/commit/a70eb5b2342ae300006ced628fb39e5008bd0d09))

### Styles

- format Homebrew install command ([1d594b7](https://github.com/jdbruijn/dotfiles/commit/1d594b7aaec8bae4c3649589d8e2efb1b1b53080))

## [1.0.0-beta.2](https://github.com/jdbruijn/dotfiles/compare/v1.0.0-beta.1...v1.0.0-beta.2) (2024-05-06)

### Features

- add `.gitconfig` to linked dotfiles ([356af93](https://github.com/jdbruijn/dotfiles/commit/356af937ed71fc10309f04d1d8300be00cdff5a8))
- add global Node.js packages ([500b868](https://github.com/jdbruijn/dotfiles/commit/500b8689e3210d2a5e430a4afba31a6c5f954f46))
- **vscode:** auto switch theme, using `Solarized Light` for the light theme ([71e37f2](https://github.com/jdbruijn/dotfiles/commit/71e37f2a71b7ed5f36d49c06ae023292ef39dbca))

### Bug Fixes

- **brew:** install wireshark as cask to get the UI in addition to the CLI ([b445963](https://github.com/jdbruijn/dotfiles/commit/b445963986560953e5febc39b79937dc4988ee77))
- **nodejs:** silently install packages to reduce useless console output ([d900864](https://github.com/jdbruijn/dotfiles/commit/d9008647fcbf3237b4ebdcf69223a777eba0ee4e))
- **rust:** add cargo to `PATH` ([8a5a470](https://github.com/jdbruijn/dotfiles/commit/8a5a470b27816773ab5d7949b232e58af16cd461))
- **vscode:** remove `rust-syntax` as syntax is already included in `rust-analyzer` ([5eb069d](https://github.com/jdbruijn/dotfiles/commit/5eb069d3d82dbd2104e37fa5f40fc007cf472462))

### Documentation

- add bullet points ([978c5b9](https://github.com/jdbruijn/dotfiles/commit/978c5b990d9ffce67c48e3e9ac05f62d89db3d28))

## 1.0.0-beta.1 (2024-03-31)

### Features

- add `httpie` ([c02d996](https://github.com/jdbruijn/dotfiles/commit/c02d99636ce9c3fe857949a5f6dc057e36382bd8))
- add `NO_MACOS` option, to skip setting macOS preferences ([958fc15](https://github.com/jdbruijn/dotfiles/commit/958fc15710820abcfa263a4ff364e29d91425a9e))
- add `zoxide` ([2fdfa1a](https://github.com/jdbruijn/dotfiles/commit/2fdfa1ae57c22a9220882b086f80be3397afd46b))
- add 1Password CLI ([8b9e460](https://github.com/jdbruijn/dotfiles/commit/8b9e4605475e8c761b0c77440a6ad593fa522adf))
- add AltTab, used for window switching ([3b6c484](https://github.com/jdbruijn/dotfiles/commit/3b6c48430e041a0a1af6be977138cf857cb6a021))
- add initial dotfiles ([9f4965b](https://github.com/jdbruijn/dotfiles/commit/9f4965b73639b5b02c48d01f3e1e6db2ea3180ce))
- add Steam ([8369bcd](https://github.com/jdbruijn/dotfiles/commit/8369bcdfe4edf979392ab05523e89518ed4b2db7))
- **alias:** add `glolnc` alias to show commits without chores ([f5adca9](https://github.com/jdbruijn/dotfiles/commit/f5adca93fcefb90a4e9dbb3cb293cd383ac60868))
- **brew:** add Beekeeper Studio ([6c5f60d](https://github.com/jdbruijn/dotfiles/commit/6c5f60d458e3ca4df1efb010344731a29e305ea8))
- **vscode:** add GitHub extensions ([1a4723b](https://github.com/jdbruijn/dotfiles/commit/1a4723be23d85f09b99d3707bb7c2e1acd46268d))
- **vscode:** enable XO for formatting ([a955511](https://github.com/jdbruijn/dotfiles/commit/a9555111804542f1a358100c5261352c2aca3c4a))

### Bug Fixes

- **alias:** use `lsd` instead of `ls` ([d1c1831](https://github.com/jdbruijn/dotfiles/commit/d1c1831c31543aa17c846777e65a9299c80f3041))
- clarify warning message for symlink failure ([b44556c](https://github.com/jdbruijn/dotfiles/commit/b44556cba2c4c96e10643cdca4fa9f6e85ad086b))

### Styles

- format readme ([e4c7f73](https://github.com/jdbruijn/dotfiles/commit/e4c7f73ccd564e89f08b64fad33b229fd8a40140))
