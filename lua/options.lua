local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2        -- 制表符显示为4个空格宽
opt.shiftwidth = 2     -- 用于自动缩进的宽度
opt.expandtab = false  -- 使用制表符进行缩进
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"


-- 右侧参考线，超过表示代码太长了，考虑换行
opt.colorcolumn = "80"


-- 光标在行首尾时<Left><Right>可以跳到下一行
opt.whichwrap = '<,>,[,]'
