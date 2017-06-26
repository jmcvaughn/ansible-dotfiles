set runtimepath+=/usr/share/vim/vimfiles

" gruvbox theme: https://github.com/morhetz/gruvbox/wiki/Configuration/
colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=0

set autochdir
set background=dark
set complete+=k
set confirm
set dictionary+=/usr/share/hunspell/en_GB.dic
set formatoptions+=1
set guicursor=
set ignorecase
set iskeyword&
set mouse=a
set number
set path+=**
set ruler
set scrolloff=15
let &showbreak='>> '
set smartcase
set spelllang=en_gb,en_us
set termguicolors
set textwidth=80
set thesaurus+=/usr/share/mythes/th_en_GB_v2.dat
set visualbell

" Tabs
setlocal expandtab shiftwidth=4 tabstop=4

" Filetype settings for written language
autocmd FileType bib,tex,yaml setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType gitcommit,markdown,tex setlocal spell

" Filetype settings for programming languages
autocmd FileType c,cpp setlocal expandtab& shiftwidth& tabstop&
autocmd FileType python setlocal textwidth=79

" Document conversion
" GitHub Flavored Markdown to HTML
command Gitmd2html !pandoc --from=markdown_github-hard_line_breaks --to=html5
  \ --output=%:r.html %
" LaTeX to PDF
command Latex2pdf !latexmk -output-directory=aux -pdf main.tex
