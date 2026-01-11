--配置文件管理
--配置：基础
require('plugins')
require('options')
require('keymaps')

--插件
require("plugins-config.lualine")				--状态栏
require("plugins-config.nvim-tree")			--文件树
require("plugins-config.treesitter")		--高亮
require("plugins-config.toggleterm")		--打开终端
require("plugins-config.smear-cursor")	--丝滑光标

--LSP
require("lsp.lsp")
require("lsp.cmp")									--代码补全
require("lsp.comment")							-- ?
require("lsp.autopairs")						--自动补全
require("lsp.bufferlines")					--多窗口
