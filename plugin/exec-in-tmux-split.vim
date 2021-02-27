if exists("g:loaded_exec_in_tmux_split")
  finish
endif
let g:loaded_exec_in_tmux_split = 1

let g:execSplitId = ''

func! ExecInTmuxSplit(command)
  if !empty(g:execSplitId)
    let found = system('tmux has-session -t \' . g:execSplitId . ' 2>/dev/null && echo "ok"')
    if found[:-2] != 'ok'
        let g:execSplitId = ''
    endif
  endif

  if empty(g:execSplitId)
    let g:execSplitId = system('tmux split-window -hPF "#{pane_id}" | tr -d "\n"')
    silent call system('tmux last-pane')
  endif

  silent call system('tmux send-keys -t \' . g:execSplitId . ' "' . a:command . '" Enter')
endfunc
