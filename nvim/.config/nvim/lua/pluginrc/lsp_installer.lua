local lsp_installer = require('nvim-lsp-installer')

local servers = {'tsserver'}

for _, name in pairs(servers) do 
  local is_found, server = lsp_installer.get_server(name)
  if is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end
