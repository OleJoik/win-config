vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'lambdalisue/fern.vim' 
    use "lambdalisue/fern-git-status.vim"
    use "lambdalisue/fern-renderer-nerdfont.vim"
    use "lambdalisue/nerdfont.vim"
    use "lambdalisue/fern-hijack.vim"
    use 'voldikss/vim-floaterm'

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'Mofiqul/vscode.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use('tpope/vim-fugitive')
end)
