<div align="center">
  <img src="./fish.jpg" width="360" height="360" alt="Digital illustration of a blue fish" />
  <h1><code>fish-fns</code></h1>
</div>

My [Fish](https://github.com/fish-shell/fish-shell) shell functions, packaged as a [Fisher](https://github.com/jorgebucaran/fisher) plugin. Originally part of my [dotfiles](https://github.com/adamelliotfields/dotfiles).

## Installation

```sh
# add to ~/.config/fish/fish_plugins and install
fisher install adamelliotfields/fish-fns@main

# install or update if already in fish_plugins
fisher update
```

## Functions

- [`chat`](./functions/chat.fish): OpenAI chat CLI
- [`fio`](./functions/fio.fish): File.io CLI
- [`format`](./functions/format.fish): Display a number in various formats
- [`gituser`](./functions/gituser.fish): Update Git config with email address and corresponding GPG key
- [`mkcd`](./functions/mkcd.fish): Create a directory and change to it
- [`nvm`](./functions/nvm.fish): Node Version Manager
- [`octal`](./functions/octal.fish): Show octal permissions for a file
- [`open`](./functions/open.fish): Universal open command
- [`pypi`](./functions/pypi.fish): Search PyPI for package info
- [`spinner`](./functions/spinner.fish): Ora-like loading spinner
- [`up`](./functions/up.fish): Move up $n$ directories

## Inspiration

- [alexanderepstein/bash-snippets](https://github.com/alexanderepstein/Bash-Snippets)
