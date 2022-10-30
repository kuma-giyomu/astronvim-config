return {
  n = {
    ["<leader>d"] = false,
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- Debugger
    ["<F5>"] = { "<cmd>lua require'dap'.continue()<cr>", desc = "Debugger: Start" },
    ["<F6>"] = { "<cmd>lua require'dap'.terminate()<cr>", desc = "Debugger: Terminate" },
    ["<F10>"] = { "<cmd>lua require'dap'.step_over()<cr>", desc = "Debugger: Step over" },
    ["<F11>"] = { "<cmd>lua require'dap'.step_into()<cr>", desc = "Debugger: Step into" },
    ["<F12>"] = { "<cmd>lua require'dap'.step_out()<cr>", desc = "Debugger: Step out" },
  },
}
