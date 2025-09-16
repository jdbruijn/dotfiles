# macOS <!-- omit in toc -->

- [Keyboard shortcuts](#keyboard-shortcuts)
  - [Screenshots with **Shottr**](#screenshots-with-shottr)
  - [Removed system keyboard shortcuts](#removed-system-keyboard-shortcuts)
- [Configuration](#configuration)

# Keyboard shortcuts

The following keyboard shortcuts are configured.

## Screenshots with [**Shottr**][shottr]

The following keyboard shortcuts are configured for [**Shottr**][shottr].

- ⇧⌘1 take an area screenshot.
- ⇧⌘2 take an area screenshot, repeating the previous area.
- ⇧⌘3 take a window screenshot, with selection of the window.
- ⇧⌘4 take a fullscreen screenshot.

## Removed system keyboard shortcuts

The system shortcuts shown in the following table are removed.

| Key  | Functionality                                  | Reason                           |
| ---- | ---------------------------------------------- | -------------------------------- |
| ⇧⌘3  | Save picture of screen as a file               | Replaced by [**Shottr**][shottr] |
| ⌃⇧⌘3 | Copy picture of screen to the clipboard        |                                  |
| ⇧⌘4  | Save picture of selected area as a file        | Replaced by [**Shottr**][shottr] |
| ⌃⇧⌘4 | Copy picture of selected area to the clipboard |                                  |
| ⇧⌘5  | Screenshot and recording options               | Replaced by [**Shottr**][shottr] |
| ⌥⌘D  | Turn Dock hiding on/off                        |                                  |

# Configuration

A lot of the macOS configurations that you can do using a script, are not publicly documented. Some configurations, for example the [Dock](https://developer.apple.com/documentation/devicemanagement/dock), are also documented in the Apple's [Device Management documentation](https://developer.apple.com/documentation/devicemanagement). The best resource however, is the [`macOS-defaults`][macos-defaults] project by [Yann Bertrand](https://github.com/yannbertrand). It contains a list of documented configurations and a great tool to find other configurations.

To use the [`macOS-defaults`][macos-defaults] tool to record configuration changes, you need to clone the [`macos-defaults`][macos-defaults] repository.

1. Clone the [`macos-defaults`][macos-defaults] repository.
   ```shell
   gh repo clone yannbertrand/macos-defaults
   ```
2. Start recording configuration changes and give the diff a name when prompted.
   ```shell
   ./diff.sh
   ```
3. Make the configuration changes you want. Note that this is only able to record changes to the `defaults`, so not all changes might be recorded.
4. Go back to the terminal where you started the script and press any key to stop recording. A diff of the configuration changes will be shown. Additionally you can view the complete configuration in `diffs` directory.

[shottr]: https://shottr.cc/
[macos-defaults]: https://github.com/yannbertrand/macos-defaults
