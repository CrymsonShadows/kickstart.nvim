-- vim-sneak
-- https://github.com/justinmk/vim-sneak
return {
  'justinmk/vim-sneak',
  enabled = false,
  lazy = false,
  init = function()
    vim.g['sneak#label'] = 1
  end,
}
