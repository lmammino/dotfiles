# dotfiles

My personal collection of dotfiles.


## .bashrc && .bash_profile

I have a modular setup for my `.bashrc` and my `.bash_profile`.

This setup searches for `*.sh` files in `$HOME/Library/profile.d` or `$HOME/Library/bashrc.d`.

To use this setup, copy [`.bash_profile`](./.bash_profile) and [`.bashrc`](./.bashrc) in your `$HOME` directory. Of course make sure to backup / merge your existing one.

If you want to use one of the modules available here in [`Library`](./Library) you can either copy it to your local path or, even better, you can simlynk it, for example:

```bash
mkdir -p $HOME/Library/profile.d
ln -s $PWD/Library/profile.d/emojify.sh $HOME/Library/profile.d/
```

To enable all modules you can use the following shortcut:

```bash
ln -s $PWD/Library/profile.d/* $HOME/Library/profile.d/
```

Files are loaded in alphabetical order, so if you want to customise the loading order of modules you can symlink them using a numeric prefix. For instance:

```bash
mkdir -p $HOME/Library/profile.d
ln -s /full/path/to/dotfile/clone/Library/profile.d/emojify-terminal.sh $HOME/Library/profile.d/100.emojify-terminal.sh
```


## Contributing

Everyone is very welcome to contribute to this project. You can contribute just by submitting bugs or
suggesting improvements by [opening an issue on GitHub](https://github.com/lmammino/dotfiles/issues).

You can also submit PRs as long as you adhere with the code standards and write tests for the proposed changes.


## License

Licensed under [MIT License](LICENSE). © Luciano Mammino.
