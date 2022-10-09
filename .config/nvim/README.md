# Vim Basics

## Install plugins
```
:PlugInstall
```

## Useful commands

### Getting back to first line 
normal mode: `gg`
### Getting to last row 
normal mode: `shift+g`
### Visual mode 
normal mode: `v`
### First line of the a line
normal mode: `0`
### Jump to specific line in the file 
normal mode: `<line-number>gg`
### Delete character
normal mode: `x`
### Delete multiple character 
normal mode: `<line-number>x`
### Delete word
normal mode: `dw` ("delete word")
### Delete line
normal mode: `dd`
### Delete from courser
normal mode: `D`(`=c$=C`, same commands)
### Undo
normal mode: `u`
### Redo
normal mode: `ctrl+r`
### Jump forward to beginning of each word
normal mode: `w` ("word")
### Jump backward to beginning of each word
`b` ("backwards"); ignore special characters `B`
### Jump multiple words
normal mode: `<number-of-words>w`; ignore special character `W`
### Jump to end of each word
normal mode: `e` ("end"); ignore special characters `E`
### Put (Insert deleted line) 
normal mode: `p`
### Replace 
normal mode: `r`<letter-that-replaces-character-of-cursor>
### Change command
normal mode: `c` followed by e.g. `e` ("end of word") or `$` (entire line starting from courser)
- puts you automatically in insert mode
### Delete from the courser the entire line
`C`
### Forward jump to character
normal mode: `f`<character-to-jump-to>
### Forward jump to character (backward)
normal mode: `F`<character-to-jump-to>
### Forward jump before character (also backwards)
normal mode: `t`/`T`<character-to-jump-before>
### End of line + insert mode 
`A` ("appending")
### Character after cursor + insert line
`a` ("appending")
### Delete character + insert mode
`s`
### Delete line + insert mode
`S`
### New line + insert mode (line after courser)
`o`
### New line + insert mode (line before courser)
`O`
### Yanking (copying) (Yank/copy command)
`y`<command>
- `yy` yanks an entire line
- `yw` yanks until end of word
- `y$` yanks until end of line
### Get "()"
`%`
### Search forward
`/<search>`
- then type enter + `n`/`N` (next, backwards) to navigate through
### Search and replace
`:%s/<oldstring>/<newstring>/g` (whole document)
`:3,9s/<oldstring>/<newstring>/g` (between line 3 and 9)
`:%s/<oldstring>/<newstring>/gc` (again whole document but vim will ask on every occurence)
### Run shell command from vim
`:!<command>`
### Get to know which commands are available
`:e` + ctrl+d gives you all commands starting with the letter e

### Managing splits
`:split`/`:vsp`: horizontal split
`:vsplit`/`:vsp`: vertical split
`ctrl+w+_`: max out vertical splits
`ctrl+w+|`: max out horizontal splits
`ctrl+w+=`: 50-50 split
`ctrl+w+R`: Swap splits
