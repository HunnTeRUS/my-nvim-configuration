source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/mappings.vim
source ~/.config/nvim/vim-plug/plugins.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua
source ~/.config/nvim/plug-config/lsp-config.vim

" Config files:
luafile ~/.config/nvim/lua/lsp/bash-lsp.lua
luafile ~/.config/nvim/lua/lsp/eslint-lsp.lua
luafile ~/.config/nvim/lua/lsp/go-lsp.lua
luafile ~/.config/nvim/lua/lsp/java-lsp.lua
luafile ~/.config/nvim/lua/lsp/json-lsp.lua
luafile ~/.config/nvim/lua/lsp/python-lsp.lua
luafile ~/.config/nvim/lua/lsp/tsserver-lsp.lua
luafile ~/.config/nvim/lua/lsp/yaml-lsp.lua

set clipboard=unnamedplus
set relativenumber
set encoding=utf8

" AIRLINE CUSTOMIZATION
execute pathogen#infect()
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Config nerdtree git
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0