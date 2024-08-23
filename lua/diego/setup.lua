vim.cmd[[colorscheme tokyonight]]
vim.g.lightline = { colorscheme = 'grubvox' }

vim.opt.cursorline    = true

vim.opt.number        = true

vim.opt.tabstop       = 4
vim.opt.softtabstop   = 4
vim.opt.shiftwidth    = 4
vim.opt.expandtab     = true
vim.opt.smarttab      = true

vim.opt.smartindent   = true
vim.opt.autoindent    = true

vim.opt.wrap          = false

vim.opt.undodir       = os.getenv("HOME") .. "/.vim/undodir/"
vim.opt.undofile      = true

vim.opt.hlsearch      = false

vim.opt.termguicolors = true

vim.opt.scrolloff     = 8

vim.opt.clipboard:append('unnamedplus')

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "Makefile",
    command = "0r ~/.config/nvim/templates/Makefile"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "main.cpp",
    command = "0r ~/.config/nvim/templates/main.cpp"
})


vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.tex",
    command = "0r ~/.config/nvim/templates/skeletonArticle.tex"
})

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.h",
    callback = function()
        vim.cmd("0r ~/.config/nvim/templates/skeleton.h")
        local file_name = vim.fn.expand("%:t"):upper():gsub("%.", "_")
        vim.cmd("execute '1,2g/FILE_NAME_H/s//" .. file_name .. "/g'")
    end
})

