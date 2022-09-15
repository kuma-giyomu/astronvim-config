vim.api.nvim_create_augroup("dapui", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  desc = "Make q close dap floating windows",
  group = "dapui",
  pattern = "dap-float",
  callback = function() vim.keymap.set("n", "q", "<cmd>close!<cr>") end,
})
