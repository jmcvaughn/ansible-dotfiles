" Set 'runtimepath' first for any files installed under Vim's directories, e.g.
" colourschemes
set runtimepath+=/usr/share/vim/vimfiles


" Theming
" gruvbox theme: https://github.com/morhetz/gruvbox/wiki/Configuration/
let g:gruvbox_italic = 1
let g:gruvbox_number_column = 'bg1'
let g:gruvbox_italicize_comments = 0
let g:gruvbox_invert_selection = 0
let g:gruvbox_invert_tabline = 1  " Tab line background matches status line

colorscheme gruvbox

set background=dark  " Dark mode
set termguicolors  " Enable true-colour support


" Options
" File saving and undo history
set confirm
set undofile

" Visual guides
set cursorline
set guicursor=
set number
set relativenumber

" Completion
set dictionary+=/usr/share/hunspell/en_GB.dic
set thesaurus+=/usr/share/mythes/th_en_GB_v2.dat

" Formatting
set formatoptions+=1  " Insert line break after one letter word

" Buffers
set hidden

" Searching
set ignorecase
set showmatch
set smartcase

" Interface behaviour
set mouse=a
set scrolloff=15
set noshowmode
set splitbelow
set splitright

" statusline
set statusline=
set statusline+=Col:\ %v
set statusline+=\ \ 
set statusline+=Mode:\ %{mode()}
set statusline+=%=
set statusline+=%.40F\ %m%r%y

" Directory searching
set path+=**  " Add recursive directory searching

" Spelling
set spelllang=en_gb,en_us


" Tabs
set expandtab  " Expand tabs to spaces
set shiftwidth=0  " Indent size always matches tab size ('tabstop')
set tabstop=2  " Display tabs as n spaces 


" Filetype-specific autocommands
" Programming languages
autocmd FileType c,cpp set expandtab& shiftwidth& tabstop&
autocmd FileType python set textwidth=79
autocmd FileType yaml set shiftwidth=0 tabstop=2

" LaTeX
autocmd FileType bib,tex
  \ set expandtab shiftwidth=0 spell tabstop=2

" Other written language
autocmd FileType gitcommit,markdown set spell
autocmd FileType gitcommit set expandtab& shiftwidth& tabstop&


" Custom commands
" Convert GitHub Flavored Markdown to HTML
command Gitmd2html :write |
  \ !pandoc --from markdown_github-hard_line_breaks --to html5
  \ --output %:r.html %
  \ --toc --toc-depth 6
  \ --self-contained --css $HOME/git/markdown-css/github.css

" Convert GitHub Flavored Markdown to PDF
command Gitmd2pdf :write |
  \ !pandoc --from markdown_github-hard_line_breaks --to html5
  \ --output %:r.pdf %
  \ --toc --toc-depth 6
  \ --self-contained --css $HOME/git/markdown-css/github.css

" LaTeX to PDF
command Latex2pdf !latexmk -output-directory=aux -pdf main.tex

