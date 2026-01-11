--配置主按键与定义缩写
vim.g.mapleader = " "

local keymap = vim.keymap

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

-- 视觉模式
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
	--所选代码块下移
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
	--所选代码块上移
keymap.set("v", "H", "<gv")
	--向右缩进
keymap.set("v", "L", ">gv")
	--向左缩进



