-- 32bit support problem
-- Because some servers does not support nvim-lsp-installer
-- we will doing the manual way without nvim-lsp-installer

local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
  return
end

local servers = { 'clangd', 'cssls', 'html', 'intelephense', 'jsonls', 'pyright', 'tsserver', 'sumneko_lua' }

for _, lsp in ipairs(servers) do

  local opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  if lsp == "jsonls" then
    local jsonls_opts = require("user.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if lsp == "pyright" then
    local pyright_opts = require("user.lsp.settings.pyright")
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if lsp == "sumneko_lua" then
    local sumneko_opts = require("user.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if lsp == "intelephense" then
    local intelephense = require("user.lsp.settings.intelephense")
    opts = vim.tbl_deep_extend("force", intelephense, opts)
  end

  nvim_lsp[lsp].setup(opts)

end
