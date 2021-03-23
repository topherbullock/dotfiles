if executable('rg')
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ag Ack
cnoreabbrev Rg Ack

function GetVisualSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    echom lines[0]
    return join(lines, "\n")
endfunction

function SearchSelection()
  :Ack!<Space> GetVisualSelection()
endfunction

nnoremap <Leader>a :Ack!<Space>
" vnoremap <Leader>a :SearchyPoo<cr>
