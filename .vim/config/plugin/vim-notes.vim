" Config
let g:notes_tab_indents = 0
let g:notes_unicode_enabled = 0
let g:notes_directories = ['~/Documents/Notes', '~/workspace/notes/']
let g:notes_word_boundaries = 1
let g:notes_conceal_code = 0

" Bindings
nnoremap <leader>nn :Note<CR>
nnoremap <leader>N :Note
nnoremap <leader>nr :RelatedNotes
vnoremap <leader>nn :NoteFromSelectedText<CR>
nnoremap <leader>ns :SearchNotes
nnoremap <leader>nm :NoteToMarkdown<CR>
