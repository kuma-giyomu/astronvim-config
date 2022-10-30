local null_ls = require "null-ls"
return {
  sources = {
    -- Set a formatter
  },
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.api.nvim_create_autocmd("BufWritePre", {
        desc = "Auto format before save",
        pattern = "<buffer>",
        callback = vim.lsp.buf.format,
      })
    end
  end
}
