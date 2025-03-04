-- mini-files
-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md

return {
  'echasnovski/mini.files',
  lazy = false,
  keys = {
    {
      '<leader>E',
      function()
        require('mini.files').open(vim.uv.cwd(), true)
      end,
      desc = 'Open mini.files (cwd)',
    },
  },
  opts = {
    -- Customization of shown content
    content = {
      -- Predicate for which file system entries to show
      filter = nil,
      -- What prefix to show to the left of file system entry
      prefix = nil,
      -- In which order to show file system entries
      sort = nil,
    },

    -- Module mappings created only inside explorer.
    -- Use `''` (empty string) to not create one.
    mappings = {
      close = 'q',
      go_in = 'l',
      go_in_plus = 'L',
      go_out = 'h',
      go_out_plus = 'H',
      mark_goto = "'",
      mark_set = 'm',
      reset = '',
      reveal_cwd = '@',
      show_help = 'g?',
      synchronize = '=',
      trim_left = '<',
      trim_right = '>',
    },

    -- General options
    options = {
      -- Whether to delete permanently or move into module-specific trash
      permanent_delete = true,
      -- Whether to use for editing directories
      use_as_default_explorer = true,
    },

    -- Customization of explorer windows
    windows = {
      -- Maximum number of windows to show side by side
      max_number = math.huge,
      -- Whether to show preview of file/directory under cursor
      preview = true,
      -- Width of focused window
      width_focus = 50,
      -- Width of non-focused window
      width_nofocus = 25,
      -- Width of preview window
      width_preview = 50,
    },
  },
  config = function(_, opts)
    require('mini.files').setup(opts)

    -- set keymaps
    vim.keymap.set('n', '<leader>e', function()
      require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
    end, { desc = 'Open MiniFiles' })
  end,
}
