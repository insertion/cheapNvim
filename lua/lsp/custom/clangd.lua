-- c&cpp custom set
local opts = {
  on_attach = function(_, bufnr)
    local function buf_set_keymap(...)
      -- first para is buffer id
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require("keybindings").lsp_map(buf_set_keymap)

  end,
}

return opts
