## [1.19.1](https://github.com/jdbruijn/dotfiles/compare/v1.19.0...v1.19.1) (2025-09-25)

### Bug Fixes

- **macos:** disable Hot Corners ([863eb2d](https://github.com/jdbruijn/dotfiles/commit/863eb2d0c84d748543b07fac32fb7f179ca88f44))

## [1.19.0](https://github.com/jdbruijn/dotfiles/compare/v1.18.0...v1.19.0) (2025-09-25)

### Features

- **macos:** configure the Keyboard key repeat settings ([f91cc4b](https://github.com/jdbruijn/dotfiles/commit/f91cc4b8738d0b91ae9be249ad8ccf3a523fc536))
- **macos:** configure the Sound System Settings, mute the alert volume ([d67a8c5](https://github.com/jdbruijn/dotfiles/commit/d67a8c52021bd7651f1e87b833fa6a1e79f78f7d))
- **macos:** configure the Trackpad speed and clicking ([5acaf6e](https://github.com/jdbruijn/dotfiles/commit/5acaf6e28112c0432ec704199a2775e7468408b5))

### Bug Fixes

- **macos:** hide AltTab from the Menu Bar ([b6dff6b](https://github.com/jdbruijn/dotfiles/commit/b6dff6b6bc4bbe7dbdbb9864f11e4a3ab90e4f3f))
- **macos:** hide Spotlight from the Menu Bar ([43a6c53](https://github.com/jdbruijn/dotfiles/commit/43a6c532cd6b4a684cf4013514d458cada66bbe5))

## [1.18.0](https://github.com/jdbruijn/dotfiles/compare/v1.17.1...v1.18.0) (2025-09-25)

### Features

- **brew:** include casks in the automatic Homebrew upgrades ([ac8efa3](https://github.com/jdbruijn/dotfiles/commit/ac8efa3879db0316c1dc140dbd723a27d2dc6f94))

### Bug Fixes

- **ghostty:** increase scrollback size to 100 MiB per terminal surface ([9fdccfa](https://github.com/jdbruijn/dotfiles/commit/9fdccfa6c53941a65bac692494e21ef241313ae6))
- **ghostty:** update theme names for v1.2.0 ([d6997df](https://github.com/jdbruijn/dotfiles/commit/d6997df8e3a9f3c27eb54df0db07207f7a82c9a6))
- **vscode:** hide right-sidebar by default ([9a08b28](https://github.com/jdbruijn/dotfiles/commit/9a08b28a65f7fc2276c21daa4962e0b2465f0cea))

## [1.17.1](https://github.com/jdbruijn/dotfiles/compare/v1.17.0...v1.17.1) (2025-09-23)

### Bug Fixes

- **brew:** add missing `dotenvx/brew` tap ([01c97d9](https://github.com/jdbruijn/dotfiles/commit/01c97d9d4e0e1331c2909005524b078e57dd332e))

## [1.17.0](https://github.com/jdbruijn/dotfiles/compare/v1.16.1...v1.17.0) (2025-09-23)

### Features

- **macos:** configure trackpad swipe between pages with two fingers ([0882de2](https://github.com/jdbruijn/dotfiles/commit/0882de2330454ed9a147507b20bd0f36a3c6610e))

## [1.16.1](https://github.com/jdbruijn/dotfiles/compare/v1.16.0...v1.16.1) (2025-09-22)

### Bug Fixes

- **mise:** remove the `npm-check-updates`, `typescript` and `wscat` Node.js packages ([9b96fe6](https://github.com/jdbruijn/dotfiles/commit/9b96fe6daf85f998a1b9037a964f484b4b366460))

## [1.16.0](https://github.com/jdbruijn/dotfiles/compare/v1.15.0...v1.16.0) (2025-09-22)

### Features

- **macos:** prefer tabs when opening documents ([bddab8d](https://github.com/jdbruijn/dotfiles/commit/bddab8d58e1e378fe3a1ab30241daf8307a36810))

## [1.15.0](https://github.com/jdbruijn/dotfiles/compare/v1.14.0...v1.15.0) (2025-09-22)

### Features

- add AltTab configuration ([8f3dec2](https://github.com/jdbruijn/dotfiles/commit/8f3dec2e0672ab34e2b15cd0bd5c5450df87db5e))

### Bug Fixes

- **brew:** remove `coreutils`, which was not needed by itself ([5a5187d](https://github.com/jdbruijn/dotfiles/commit/5a5187dbec0eea644bc0354a4dec2b209bd3ce0d))

## [1.14.0](https://github.com/jdbruijn/dotfiles/compare/v1.13.0...v1.14.0) (2025-09-20)

### Features

- **brew:** add option for custom Homebrew configurations ([f4eccbb](https://github.com/jdbruijn/dotfiles/commit/f4eccbb2300135931beb55de3bfbcc5c969e4d91))
- **install:** add option for custom installation files ([a75fe45](https://github.com/jdbruijn/dotfiles/commit/a75fe450ce08a0d5d7b9bdb2cc4c9f8348963515))
- **zsh:** move `zsh/custom` directory to `custom/zsh`, allowing for more customisations ([8510e3f](https://github.com/jdbruijn/dotfiles/commit/8510e3fa7e0010ee1c41e78aa266351dd2cdf159))

### Bug Fixes

- **brew:** remove `maccy`, replaced by the Raycast clipboard manager ([f5e44de](https://github.com/jdbruijn/dotfiles/commit/f5e44de97b0e1314b583eebaebc8984f5516d51e))
- **macos:** kill apps separately ([9759dfe](https://github.com/jdbruijn/dotfiles/commit/9759dfe8569ca3de73525b2bbfb8451d1bd95458))
- **zsh:** add `bat` aliases ([308bb25](https://github.com/jdbruijn/dotfiles/commit/308bb2590851346077c8b6a09831b8b0d392982e))

## [1.13.0](https://github.com/jdbruijn/dotfiles/compare/v1.12.0...v1.13.0) (2025-09-19)

### Features

- **brew:** configure Homebrew autoupdate ([8a56e11](https://github.com/jdbruijn/dotfiles/commit/8a56e11e695e5b2f3366973a4881059bcc171dc3))
- **macos:** add Sequel Ace configuration ([96f5df0](https://github.com/jdbruijn/dotfiles/commit/96f5df0a5b8a746511555cde552df913372d491d))

### Bug Fixes

- **docker:** set `SHELL` environment variable to `/bin/zsh` ([04cda9f](https://github.com/jdbruijn/dotfiles/commit/04cda9fcf3d71ed71d980bb320af81b763008b4e))
- **install:** source `macos/is-macos` in the current session ([e1ddd6c](https://github.com/jdbruijn/dotfiles/commit/e1ddd6c8d17b456401c6194447a661abfb68ec40))
- **install:** validate the shell is Zsh ([6963e6e](https://github.com/jdbruijn/dotfiles/commit/6963e6efb28c22b8550e1e3e6afce741eddf4d9f))

### Documentation

- **macos:** add note about configurations for maintainers or custom defaults ([1cc4e41](https://github.com/jdbruijn/dotfiles/commit/1cc4e41de665300c306bd6759bc98954ac100ca4))
- **ssh:** pog public key instead of the private ([acee002](https://github.com/jdbruijn/dotfiles/commit/acee0027242dfebcb86d2a6a38c95b224b314a2d))

### Code Refactoring

- **macos:** move macOS check to its own file ([b4f3cea](https://github.com/jdbruijn/dotfiles/commit/b4f3ceace7f90aa0a770ae27321ef62301433bf0))

## [1.12.0](https://github.com/jdbruijn/dotfiles/compare/v1.11.0...v1.12.0) (2025-09-18)

### Features

- **macos:** add keyboard configuration ([ce2b338](https://github.com/jdbruijn/dotfiles/commit/ce2b3389e927f0f773bbb0c448cfeb693ccdad96))

## [1.11.0](https://github.com/jdbruijn/dotfiles/compare/v1.10.0...v1.11.0) (2025-09-16)

### Features

- add Raycast configuration ([9731732](https://github.com/jdbruijn/dotfiles/commit/9731732df478d5a713c0733ad03d6ab3fef3a4ad))
- **desktop-dock:** hide Widgets from Desktop ([87de7c7](https://github.com/jdbruijn/dotfiles/commit/87de7c7d16833a7026ecb661254526132b5e0233))
- **macos:** configure appearance ([8d55108](https://github.com/jdbruijn/dotfiles/commit/8d551084a2d2b34fb79cdce50d1d63e161bafee8))
- **raycast:** disable macOS Windows management shortcuts ([97276b5](https://github.com/jdbruijn/dotfiles/commit/97276b5cc4f43fc88a4beccad9b586a00baa9469))

### Bug Fixes

- **install:** add warning to suggest a macOS restart to apply the changes ([0026767](https://github.com/jdbruijn/dotfiles/commit/0026767a2ded9d6b1d9d02da456a2c1daaa3c900))
- **macos:** disable Dock hiding shortcut ([82c0c0b](https://github.com/jdbruijn/dotfiles/commit/82c0c0b19c118318909c132d37673aab970812fd))
- **macos:** revert `$HOME` in Dock Apps ([49b5975](https://github.com/jdbruijn/dotfiles/commit/49b5975cd888fc24f5a1644119197c68773b5de0))
- **vscode:** add `keybindings.json` to configure custom key bindings ([e0dec6c](https://github.com/jdbruijn/dotfiles/commit/e0dec6c14dfcea77ddcdaa47439593d129a71b67))

### Code Refactoring

- **macos:** extract `disable_keyboard_shortcut` to a separate file ([9a28f72](https://github.com/jdbruijn/dotfiles/commit/9a28f72bbb16107b8589d2d14d6fd986918096a7))
- **macos:** move `dock` to `desktop-dock` ([fcc182b](https://github.com/jdbruijn/dotfiles/commit/fcc182b06a6eef713e3a3d94a820b11d5f49c524))

## [1.10.0](https://github.com/jdbruijn/dotfiles/compare/v1.9.0...v1.10.0) (2025-09-16)

### Features

- **brew:** add `dotenvx` ([89f5fea](https://github.com/jdbruijn/dotfiles/commit/89f5fead21968929dfd63a2971fdd414dac0a3f7))
- configure macOS settings ([da2213d](https://github.com/jdbruijn/dotfiles/commit/da2213d00bd5f39d6ce4dff77242827b6a5d3a45))
- **macos:** configure the Dock ([d301088](https://github.com/jdbruijn/dotfiles/commit/d301088b0e6b34dda552000ba12bfc2c19d545ae))
- use `mise` to manage Node.js Rust and Golang versions ([1170437](https://github.com/jdbruijn/dotfiles/commit/1170437922af46941e02498974e53759e074d92d))
- **zsh:** replace `lsd` with `eza` and configure aliases ([0f6d10b](https://github.com/jdbruijn/dotfiles/commit/0f6d10bad29896c0880161d6e2734c45ee2ec02d))

### Bug Fixes

- **ghostty:** disable auto-update, which causes an annoying popup ([0f32eb1](https://github.com/jdbruijn/dotfiles/commit/0f32eb17f0797327833358bd50c2efbe6fe304ef))
- **install:** call scripts from the user dotfile directory ([4ff410a](https://github.com/jdbruijn/dotfiles/commit/4ff410a49d87a46465fe75ba24c65d8506972db2))
- **shottr:** don't close on ⌘Q, keep Shottr in the Menu Bar ([6f640d2](https://github.com/jdbruijn/dotfiles/commit/6f640d22b8e85304edf01a8d52c917f70cbc2dd3))
- **shottr:** only save on Esc, preventing double files ([76a84d0](https://github.com/jdbruijn/dotfiles/commit/76a84d095e6a86e28e9a89f42a5e5a28c46a7599))
- **zsh:** load `path.zsh` files at the start of the Zsh configuration ([613fb6c](https://github.com/jdbruijn/dotfiles/commit/613fb6c76e225b9127469d95da9cf6f0ba681880))
- **zsh:** load brew shell environment, i.a. for completions ([1ed4b5c](https://github.com/jdbruijn/dotfiles/commit/1ed4b5ce40ea74e65a1eef31dcc26ddbd9e93a67))
- **zsh:** remove aliases to `lsd` ([ce8c298](https://github.com/jdbruijn/dotfiles/commit/ce8c298906f8850b75c37cc8cd1ef758d3d3e89d))
- **zsh:** remove duplicate starship init ([bb5f188](https://github.com/jdbruijn/dotfiles/commit/bb5f188e5ed00a414cb55940444760c054bc20d0))

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
