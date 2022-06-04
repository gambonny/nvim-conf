--- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tb", ":Telescope buffers theme=dropdown <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tm", ":Telescope marks <CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tg", ":Telescope grep_string<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tl", ":Telescope live_grep<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tc", ":Telescope git_commits<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>td", ":Telescope git_bcommits<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>th", ":Telescope git_branches<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>ts", ":Telescope git_status<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>tz", ":Telescope current_buffer_fuzzy_find<CR>", {})

--- Buffers
vim.api.nvim_set_keymap("n", "[b", ":BufferLineCycleNext <CR>", {})
vim.api.nvim_set_keymap("n", "]b", ":BufferLineCyclePrev <CR>", {})
vim.api.nvim_set_keymap("n", "<C-q>", "::Bdelete <CR>", {})

--- Git
--- <leader>gy -> copies repo current line (gitlinker).  
vim.api.nvim_set_keymap('n', '<leader>gY', '<cmd>lua require"gitlinker".get_repo_url()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>gB', '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})

--- Splits
vim.keymap.set('n', '<A-y>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-u>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-i>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-o>', require('smart-splits').resize_right)

vim.keymap.set('n', '<A-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').move_cursor_right)

-- Faster j-k keys
vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})


