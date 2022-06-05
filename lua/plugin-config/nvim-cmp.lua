-- custom setting
local cmp = require('cmp')
local setting = {
  snippet = {
    -- you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  sources = cmp.config.sources(
    { { name = 'nvim_lsp' }, { name = 'vsnip' } }, -- 优先显示
    { { name = 'buffer' } }-- 备选
  ),
  -- <Up/Down> to select, <Tab> to confirm
  mapping = {
    -- fallback is the key orignal function, when cmp is visible, it will be override
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,

    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,

    ["<Up>"] = function(fallback)
      if cmp.visible() and cmp.get_selected_entry() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,

    ["<Down>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,

    ["<CR>"] = function(fallback)
      if cmp.visible() then
        if cmp.get_selected_entry() then
          cmp.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })
        else
          cmp.close()
        end
      else
        fallback()
      end
    end
  }
}
cmp.setup(setting)
