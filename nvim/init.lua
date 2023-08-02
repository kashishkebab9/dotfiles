require("kash")

vim.cmd("set relativenumber") 
vim.cmd("set number") 
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set expandtab")
-- show existing tab with 2 spaces width
vim.cmd("set tabstop=2")
vim.cmd("set expandtab")
-- when indenting with '>', use 2 spaces width
vim.cmd("set shiftwidth=2")

-- Function to set the filetype to "xml" for .launch files
local function set_launch_filetype()
    if vim.fn.expand('%:e') == 'launch' then
        vim.cmd('setfiletype xml')
    end
end

set_launch_filetype()


