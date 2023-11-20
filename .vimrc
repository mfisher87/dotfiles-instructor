set modeline
set t_Co=256

syntax on
set background=light

" an accessible color theme: https://gitlab.com/protesilaos/tempus-themes
color tempus_totus

set tabstop=2
set shiftwidth=2

" use spaces instead of tabs
set expandtab
" display tabs as tabs instead of dot-space
"set nolist

" Allow arbitrary backspacing
set backspace=indent,eol,start

" Overwrite instead of rename files
set backupcopy=yes

" Highlight matching search terms
set hlsearch

filetype indent plugin on

" Show absolute line number for current line
set number

" Increase the maximum number of open tabs
set tabpagemax=99

" Plugins
call plug#begin('~/.vim/plugged')

"" Accessible color themes
Plug "https://gitlab.com/protesilaos/tempus-themes-vim.git"
Plug 'vim-scripts/indentpython.vim'
"" Allows commenting with `gc`/`gcc`
Plug 'tpope/vim-commentary'
"" Allows opening file browser with `-` key
Plug 'tpope/vim-vinegar'
"" Handles changing between single-line and multi-line list/argument formats
Plug 'FooSoft/vim-argwrap'
"" Jinja2 highlighting
Plug 'Glench/Vim-Jinja2-Syntax'
"" Markdown
Plug 'plasticboy/vim-markdown'
"" Markdown preview server
"" :InstantMarkdownPreview / ::InstantMarkdownStop
"" Plug 'instant-markdown/vim-instant-markdown'
"" Indentation guides
Plug 'nathanaelkane/vim-indent-guides'
"" Quarto syntax
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'quarto-dev/quarto-vim'

call plug#end()

" argwrap config
nnoremap <silent> <leader>a :ArgWrap<CR>
let g:argwrap_tail_comma = 1

" Bash-like tab completion
set wildmode=longest,list

" vim-indent-guides config:
"" Enable indentation guides by default
let g:indent_guides_enable_on_vim_startup = 1
"" Custom colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

"vim-markdown config:
"" Disable folding
let g:vim_markdown_folding_disabled = 1

"vim-instant-markdown config:
""Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"Disable automatic previews. To manually trigger: `:InstantMarkdownPreview`
"let g:instant_markdown_autostart = 0  " Don't automatically start the preview server
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
