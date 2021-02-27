### About
Plugin exposes simple function `ExecInTmuxSplit(cmd)` which upon calling will open tmux pane and execute passed `cmd` in it. Subsequent calls will be executed in an already opened pane.

![GIF Demo](https://raw.github.com/gfx687/exec-in-tmux-split/main/doc/demo.gif)

### Requirements
1) [tmux](https://github.com/tmux/tmux) (last tested with version 3.1c)

### Installation
To install with [Vim-Plug](https://github.com/junegunn/vim-plug) add the following to your vimrc
```
Plug 'gfx687/exec-in-tmux-split'
```
Then restart vim and run `:PlugInstall` command.

### Usage
```
nmap <leader>r :call ExecInTmuxSplit('python3 ' . expand('%:p'))<CR>
```

If you want to execute commands in an existing pane, you can manually change value of `g:execSplitId` variable.

```
// First, you need to get target pane ID (in our case it is %199)
.../exec-in-tmux-split on main [!]
➜ tmux list-panes
1: [187x101] [history 75/50000, 38320 bytes] %178
2: [188x101] [history 0/50000, 0 bytes] %199 (active)

// Second, change variable inside of vim
:let g:execSplitId='%199'
```
