local suggestions = require("copilot.suggestion")
local panel = require("copilot.panel")

require('copilot').setup({
  filetypes = {
      python = true,
      lua = true,
      clojure = true,
      cpp = true,
      ["*"] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 16.x
  server_opts_overrides = {},
})

-- remap <C-a> to accept copilot suggestion
vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true
