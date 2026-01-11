local nvim_tree = require("nvim-tree")

nvim_tree.setup({

  view = {
    width = 30,
    side = "left",
  },

  renderer = {
    icons = {
      show = {
        folder_arrow = true,
        git = true,
        modified = true,
      },
    },
  },

  actions = {
    open_file = {
      resize_window = true,
      quit_on_open = false,
    },
  },

  filters = {
    dotfiles = false,
  },

  -- 启用 Git、诊断等模块（按需）
  git = {
    enable = true,
  },

  diagnostics = {
    enable = true,
  },
  
})
