# 📄 zsh-notes

Write markdown formatted notes quickly.

`n name` to write a new note, `n` to read or edit existing notes.

## Requirements

* Required: Set `NOTES_DIRECTORY` to an existing directory that you want to
  contain your notes.
* Required: [fzf][gh-fzf] for fuzzy file finding.
* Optional: [bat][gh-bat] for better file previews.

## Installation

### Using a Plugin Manager

It is recommended that you use a plugin manager like [Antibody][antibody] to
install this plugin. Your `.zshrc` might look like this with Antibody:

```zsh
antibody bundle <<- EOF > "$(antibody home)/plugins.zsh"
	# Note taking plugin
	dominiklohmann/zsh-notes
EOF

source "$(antibody home)/plugins.zsh"
```

### Manual Installation

Clone the directory and source `source path/to/zsh-notes/notes.plugin.zsh` in
your `.zshrc`.

## License

zsh-notes is [licensed under an MIT license][license].

[antibody]: https://getantibody.github.io
[gh-fzf]: https://github.com/junegunn/fzf
[gh-bat]: https://github.com/sharkdp/bat
[license]: LICENSE
