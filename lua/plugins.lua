--下载LAZYVIM插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  {  --当前主题
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("koda")
    end,
	},
  {	--用来给状态栏配颜色
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function ()
      require("catppuccin").setup({
        flavour = "mocha",
      })
      --vim.cmd.colorscheme("catppuccin")
    end,
  },
  --文档树
  { "nvim-tree/nvim-tree.lua" },
  --文档树依赖：图标
  { "nvim-tree/nvim-web-devicons" },
  --状态栏
  { "nvim-lualine/lualine.nvim" },
  --文件查找器
  { "nvim-telescope/telescope.nvim" },
  --ctrl+hjkl定位窗口工具
  { "christoomey/vim-tmux-navigator" },
  {
	"nvim-treesitter/nvim-treesitter", -- 语法高亮  
	run = ':TSUpdate', -- 确保在安装后更新  
	config = function()
		require 'nvim-treesitter.install'.compilers = { "vim", "lua" }  
	end,
	},
	{
		"HiPhish/rainbow-delimiters.nvim", 
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},
	--LSP相关
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
		"neovim/nvim-lspconfig"
	},
	-- 自动补全
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	'hrsh7th/cmp-cmdline', -- 命令行补全支持

	"L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"hrsh7th/cmp-path", -- 文件路径

	"numToStr/Comment.nvim", -- gcc和gc注释
	"windwp/nvim-autopairs", -- 自动补全括号
	"akinsho/bufferline.nvim", -- buffer分割线
	{
		'akinsho/toggleterm.nvim', 
		version = "*", 
		config = true
	}, -- terminal插件
	{"sphamba/smear-cursor.nvim"}, --丝滑光标
}

local opts = {}

require("lazy").setup(plugins,opts)
