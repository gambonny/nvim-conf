local api = vim.api

-- Make splits prettier.
api.nvim_create_autocmd("VimEnter", {
  command = "hi WinSeparator guibg=None",
})

-- show cursor line only in active window.
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
api.nvim_create_autocmd(
  { "InsertLeave", "WinEnter" },
  { pattern = "*", command = "set cursorline", group = cursorGrp }
)

api.nvim_create_autocmd(
  { "InsertEnter", "WinLeave" },
  { pattern = "*", command = "set nocursorline", group = cursorGrp }
)

-- Yank color
api.nvim_create_autocmd("VimEnter", {
  command = "hi LineHighlight ctermbg=darkgray guibg=#694784"
})
