" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:exit<cr>               " quit discarding changes
nnoremap <C-q> :exit<cr>

inoremap ;; <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da 

" Open nerdTree with keyshortcut
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" TABS
noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>
nnoremap <C-t> :tabnew <bar> :NERDTree<CR>
noremap <C-e> :tabclose<CR>

" No more Arrow keys, deal with it
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <S>k k <NOP>

tnoremap ;; <C-\><C-n>

" Opens a new terminal in vertical split
noremap <Leader>t :vsplit term://zsh<CR>

" Comment lines
noremap <Leader>cc 

"Search for all ocourrences of the phrase that you write
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>

" CTRL + C now yank the selected
vmap <C-C> "+y

" Clears the vim highlighing
noremap <C-l> :noh<CR>

" Changes all ocourrences for the text that you have typed
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>
