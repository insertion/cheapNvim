local status, lualine = pcall(require, "lualine")
if not status then
  vim.notify("Not find lualine")
  return
end


lualine.setup({
  options = {
    -- 指定皮肤
    -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
    theme = "powerline_dark",
    -- 分割线
    component_separators = {
      left = "|",
      right = "|",
    },
    -- 设置全局模式,所有窗口共享同一个statusline
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { { 'filename', file_status = true, path = 3 } },
    lualine_x = { 'encoding' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {},
  tabline = {},
  -- lualine extensions change statusline appearance for a window/buffer with specified filetypes.
  extensions = { "nvim-tree", "quickfix", "symbols-outline" },
})
