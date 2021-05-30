# dotfiles

My personal collection of dotfiles.


## Install

Clone the repo locally with:

```bash
git clone https://github.com/lmammino/dotfiles.git
```


## Shell configuration (Fish shell 🐟)

In order to enable one or more scripts you just need to source them in your `~/.config/fish/config.fish` config file.

For instance:

```bash
# ~/.config/fish/config.fish

set DOTCONFIG $HOME/Documents/dotfiles/shell # make sure this matches where you cloned the repo
source $DOTCONFIG/asdf.sh
source $DOTCONFIG/rust.sh
source $DOTCONFIG/node.sh
source $DOTCONFIG/beep.sh
```


## Contributing

Everyone is very welcome to contribute to this project. You can contribute just by submitting bugs or
suggesting improvements by [opening an issue on GitHub](https://github.com/lmammino/dotfiles/issues).

You can also submit PRs as long as you adhere with the code standards and write tests for the proposed changes.


## License

Licensed under [MIT License](LICENSE). © Luciano Mammino.
