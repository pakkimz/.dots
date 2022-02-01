-- 32bit support problem
-- Because some servers does not support nvim-lsp-installer
-- we will doing the manual way without nvim-lsp-installer

local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
  return
end
local servers = { 'clangd' }

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
  }
end
