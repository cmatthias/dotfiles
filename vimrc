set ruler
set nocompatible
syntax on
filetype plugin indent on

colorscheme slate2

" get rid of horrid pink dialog for fuzzyfinder_textmate
hi Pmenu guibg=#CECECE guifg=#444444 gui=bold
hi PmenuSel guibg=DarkGrey guifg=#222222 gui=bold  

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

let mapleader = ","
 
map <Leader>t :FuzzyFinderTextMate<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>gu :Git push --all<CR>

au! BufWritePost vimrc,gvimrc source %
