local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    -- 默认映射
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
        ["<Esc>"] = actions.close, -- 更符合直觉的退出方式
        ["<CR>"] = actions.select_default, -- 回车确认
      },
      n = {
        ["q"] = actions.close,
        ["<CR>"] = actions.select_default,
      },
    },
    -- 忽略文件/目录
    file_ignore_patterns = {
      "node_modules",
      "%.git/",
      "__pycache__",
      "%.jpg", "%.png", "%.ico", "%.svg", "%.pdf", -- 忽略二进制/图片
      "%.DS_Store",
    },
    -- 布局优化（可选但推荐）
    --[[layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_cutoff = 100,
        width = 0.9,
        height = 0.85,
        prompt_position = "top",
      },
    },]]--
    -- 其他体验优化
    sorting_strategy = "ascending",
    winblend = 0, -- 透明度（0=不透明，适合终端兼容性）
  },

  extensions = {
  },
})
