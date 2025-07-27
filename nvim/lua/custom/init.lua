local format_augroup = vim.api.nvim_create_augroup("FormatOnSave",{clear = true})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = format_augroup,
  pattern = "*" ,
  callback = function()
    vim.lsp.buf.format({async = false, timeout_ms = 2000})
  end,
})
