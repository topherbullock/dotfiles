let g:ale_linters = {
\   'go': ['go build', 'gofmt', 'gometalinter'],
\   'typescript': ['tslint'],
\   'javascript': ['eslint'],
\   'ruby': ['ruby', 'rubocop', 'sorbet'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['goimports', 'gofmt'],
\   'typescript': ['tslint'],
\   'javascript': ['eslint'],
\   'ruby': ['rubocop']
\}


let g:ale_ruby_rubocop_executable = 'bundle'

" Enable completion where available.
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1

let g:ale_lint_delay = 100
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
