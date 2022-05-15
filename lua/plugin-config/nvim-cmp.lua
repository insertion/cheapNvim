-- custom setting
local cmp = require('cmp')
local setting = {
  sources = cmp.config.sources {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' }
  },

  -- <Tab> to select, <CR> to confirm
  mapping = {
    -- fallback is the key orignal function, when cmp is visible, it will be override
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<CR>"] = function(fallback)
      if cmp.visible() then
        cmp.confirm()
      else
        fallback()
      end
    end
  }
}
cmp.setup(setting)
cmp.setup.cmdline("/", { sources = { { name = "buffer" }, { name = "cmdline_history" } } })
cmp.setup.cmdline("?", { sources = { { name = "buffer" }, { name = "cmdline_history" } } })
