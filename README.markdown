# Vim-fluffy

This plugin serves as the most basic semblance of a fuzzy search with `/` and `?`.

# Configuration

Map like this

```vim
cmap <space> <plug>(fluffy-space)
" NOTE: ^_ should be one character. Input it with <c-v><c-/>
cmap ^_ <plug>(fluffy-toggle)
```
