lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefiz = ' >',
        color_devicons = true,

        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

mappings = {
    i = {
        ["<C-x>"] = false,
        ["<C-q>"] = actions.send_to_qflist,
        },
    }
    },

extensions = {
    fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')
EOF

"Telescope config
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-y> :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>

nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

" I'm using CTRL + F to grep for some words with telescope
" nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

