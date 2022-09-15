local dap = require('dap')

dap.adapters.node2 = {
  type = 'executable',
  command = 'node-debug2-adapter',
}
dap.adapters.php = {
  type = 'executable',
  command = 'php-debug-adapter',
}
dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9003,
    pathMappings = {
      ['/var/app/current'] = '${workspaceFolder}'
    }
  }
}
dap.configurations.typescript = {
  {
    type = 'node2',
    request = 'launch',
    name = 'Listen for Node',
    sourceMaps = true,
    protocol = 'inspector',
    cwd = vim.loop.cwd(),
    program = '${workspaceFolder}/functions/lib/debug.js',
    outFiles = {'${workspaceFolder}/functions/lib/**/*.js'}
  }
}
-- get notify
local function start_session(_, _)
  local info_string = string.format("%s", dap.session().config.program)
  vim.notify(info_string, "debug", { title = "Debugger Started", timeout = 500 })
end
local function terminate_session(_, _)
  local info_string = string.format("%s", dap.session().config.program)
  vim.notify(info_string, "debug", { title = "Debugger Terminated", timeout = 500 })
end
dap.listeners.after.event_initialized["dapui"] = start_session
dap.listeners.before.event_terminated["dapui"] = terminate_session
