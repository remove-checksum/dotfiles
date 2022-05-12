local lsp = require('lspconfig')
local servers = {'tsserver'}

local on_attach = function(client, bufnr)
  local function set_key(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap = true, silent = true }

  set_key('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
end

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach
  }
end
