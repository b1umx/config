-- Автоматическая установка packer, если отсутствует
local fn = vim.fn
local packer_dir = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(packer_dir)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_dir })
    vim.o.runtimepath = fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Автоматическое чтение файла и синхронизация packer после сохранения буфера
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost */packages/init.lua source <afile> | PackerSync
    augroup end
]]

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Цветовые схемы
    use 'sainnhe/sonokai'
    use 'luisiacc/gruvbox-baby'
    use {
        'catppuccin/nvim',
        as = "catppuccin"
    }
end)

