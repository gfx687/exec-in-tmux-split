#### About
Plugin exposes simple function `ExecInTmuxSplit(cmd)` which upon calling will open split tmux pane and execute passed `cmd` in it. Subsequent calls will be executed in an already opened pane.

![GIF Demo](https://raw.github.com/gfx687/exec-in-tmux-split/main/doc/demo.gif)

#### Requirements
1) [tmux](https://github.com/tmux/tmux) (last tested with version 3.1c)

#### Installation
To install with [Vim-Plug](https://github.com/junegunn/vim-plug) add the following to your vimrc
```
Plug 'gfx687/exec-in-tmux-split'
```
Then restart vim and run `:PlugInstall` command.

#### Usage
```
nmap <leader>r :call ExecInTmuxSplit('python3 ' . expand('%:p'))<CR>
```
