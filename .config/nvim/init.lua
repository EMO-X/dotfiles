vim.opt.number = true        
vim.opt.termguicolors = true 

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.api.nvim_set_hl(0, 'Comment', { fg = '#90D5FF' })      
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ffffff' })       
vim.api.nvim_set_hl(0, 'String', { fg = '#90D5FF' })       
vim.api.nvim_set_hl(0, 'Function', { fg = '#008236' })      
vim.api.nvim_set_hl(0, 'Keyword', { fg = '#6432b6' })    
vim.api.nvim_set_hl(0, 'Type', { fg = '#8A00C4' })          
vim.api.nvim_set_hl(0, 'Constant', { fg = '#73d3e7' })      
vim.api.nvim_set_hl(0, 'Statement', { fg = '#73d3a3' })     
vim.api.nvim_set_hl(0, 'Identifier', { fg = '#ffe5b4' })    
vim.api.nvim_set_hl(0, 'PreProc', { fg = '#afe4ee' })    




vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
