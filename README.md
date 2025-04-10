# XDG Base Directories Plugin for Oh My Zsh

## Overview

The XDG Base Directories plugin for Oh My Zsh sets up the XDG base directories according to the
[XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/).
This plugin ensures that your environment is configured properly for storing user data, cache,
and configuration files.

## Installation

To install the XDG Base Directories plugin, follow these steps:

1. **Clone the repository** into your Oh My Zsh custom plugins directory:

   ```shell
   git clone https://github.com/krahlos/xdg-basedirs.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/xdg-basedirs
   ```
2. **Add the plugin to your `.zshrc` file**:

   ```shell
   plugins=(... xdg-basedirs)
   ```
3. **Reload your shell** or restart your terminal to apply the changes:

   ```shell
   source ~/.zshrc
   ```

### Bash Users

If you are using Bash instead of Zsh, you can still use this plugin. Just follow the same
installation steps, but instead of adding it to your `.zshrc`, add it to your `.bashrc` or
`.bash_profile`:

```bash
source /path/to/xdg-basedirs/xdg-basedirs.bash
```

## Usage

Once the plugin is installed and enabled, it will automatically set up the following XDG base
directories upon starting a new shell session:

```shell
$XDG_BIN_HOME: $HOME/.local/bin
$XDG_CACHE_HOME: $HOME/.cache
$XDG_CONFIG_HOME: $HOME/.config
$XDG_DATA_HOME: $HOME/.local/share
$XDG_RUNTIME_DIR: $HOME/.local/run
$XDG_STATE_HOME: $HOME/.local/state
```

The plugin creates these directories if they do not already exist, ensuring a clean environment
for your applications.

## Customization

You can customize the plugin by modifying the `setup_xdg.sh` script located in the plugin directory.
Feel free to adjust the directory paths according to your preferences.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit
a pull request.

## License

This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for
details.
