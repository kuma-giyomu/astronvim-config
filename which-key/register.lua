return {
  -- first key is the mode, n == normal mode
  n = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      -- third key is the key to bring up next level and its displayed
      -- group name in which-key top level menu
      ["b"] = { name = "Buffers" },
      x = {
        name = "Debugger",
        b = { function() require("dap").toggle_breakpoint() end, "Toggle Breakpoint" },
        B = { function() require("dap").clear_breakpoints() end, "Clear Breakpoints" },
        c = { function() require("dap").continue() end, "Continue" },
        e = { function() require("dapui").eval() end, "Eval" },
        i = { function() require("dap").step_into() end, "Step Into" },
        l = { function() require("dapui").float_element "breakpoints" end, "List Breakpoints" },
        o = { function() require("dap").step_over() end, "Step Over" },
        q = { function() require("dap").close() end, "Close Session" },
        Q = { function() require("dap").terminate() end, "Terminate" },
        r = { function() require("dap").repl.toggle() end, "REPL" },
        s = { function() require("dapui").float_element "scopes" end, "Scopes" },
        t = { function() require("dapui").float_element "stacks" end, "Threads" },
        u = { function() require("dapui").toggle() end, "Toggle Debugger UI" },
        w = { function() require("dapui").float_element "watches" end, "Watches" },
        x = { function() require("dap.ui.widgets").hover() end, "Inspect" },
      },
    },
  },
}
