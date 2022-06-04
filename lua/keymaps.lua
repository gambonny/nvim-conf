-- Telescope
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


-- Buffers
vim.api.nvim_set_keymap("n", "[b", ":BufferLineCycleNext <CR>", {})
vim.api.nvim_set_keymap("n", "]b", ":BufferLineCyclePrev <CR>", {})
