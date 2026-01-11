--配置主按键与定义缩写
vim.g.mapleader = " "

local keymap = vim.keymap

local opts = {noremap = false, silent = true}

-- 窗口模式
keymap.set("n", "<leader>sv", "<C-w>v") 
	-- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") 
	-- 垂直新增窗口


-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>, opts")
    --开启树
keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", opts)
    --刷新树

-- bufferlines
keymap.set("n", "<S-L>", ":bnext<CR>")
	--下一个buffer窗口
keymap.set("n", "<S-H>", ":bprevious<CR>")
	--上一个buffer窗口
keymap.set("n", "<leader>x", ":bdelete<CR>")
	--关闭当前bufer窗口

--Telescope 文件模糊查找
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
	--查找文件
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
	--查找字符内容
keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opts)
	--查找历史文件
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
	--查找当前文件
keymap.set("n", "<leader>cc", "<cmd>Telescope colorscheme<CR>", opts)
		--更改当前主题

-- 视觉模式
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
	--所选代码块下移
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
	--所选代码块上移
keymap.set("v", "H", "<gv")
	--向右缩进
keymap.set("v", "L", ">gv")
	--向左缩进



