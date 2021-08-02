# Vim-fluffy

This plugin serves as the most basic semblance of a fuzzy search with `/` and `?`.

# Demo

[![asciicast](https://asciinema.org/a/425686.svg)](https://asciinema.org/a/425686)

# Configuration

Map like this

```vim
cmap <space> <plug>(fluffy-space)
" NOTE: ^_ should be one character. Input it with <c-v><c-/>
cmap ^_ <plug>(fluffy-toggle)
```
