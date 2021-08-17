if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'mxw/vim-jsx'
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
    Plug 'jelera/vim-javascript-syntax'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'ajh17/VimCompletesMe'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'nanotech/jellybeans.vim'
call plug#end()

if has("gui_running")
  set linespace=3
  set guifont=Monaco_Linux:h10
endif

" NERDTree
nmap <F2> :NERDTreeToggle %:p:h<CR>
let NERDTreeShowHidden=1
