" auto-install vim-plug
" =============================================================================
" Plugin Manager Setup
" =============================================================================
"
filetype off

" Install the plugin manager if it doesn't exist
let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
  echom 'vim-plug not found. Installing...'
  if executable('curl')
    silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' .
          \ s:plugin_url
  elseif executable('wget')
    call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
    silent exec '!wget --force-directories --no-check-certificate -O ' .
          \ expand(s:plugin_manager) . ' ' . s:plugin_url
  else
    echom 'Could not download plugin manager. No plugins were installed.'
    finish
  endif
  augroup vimplug
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    "Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Styled components
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " Go extension
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " lsp
    Plug 'neovim/nvim-lspconfig'    
    Plug 'hrsh7th/nvim-compe'

    "Airline vim
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Git plugin
    Plug 'tpope/vim-fugitive'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Prettier for code
    Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

    " Used to shows icons on screen
    Plug 'ryanoasis/vim-devicons'

    "Plugin for search engine inside nvim
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Used to comment whe whole line or selected lines
    Plug 'preservim/nerdcommenter'

    " Viminspector to debug
    Plug 'puremourning/vimspector'

    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()
