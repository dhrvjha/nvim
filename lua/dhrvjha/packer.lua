-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
	command = 'source <afile> | PackerCompile',
	group = packer_group,
	pattern = vim.fn.expand '$MYVIMRC',
})

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({ 
		'rose-pine/neovim', 
		as = 'rose-pine', 
		config = 
		function() 
			vim.cmd('colorscheme rose-pine')
		end 
	})
	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ( 'theprimeagen/harpoon' )
	use ( 'mbbill/undotree' )
	use ( 'tpope/vim-fugitive' )

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			{'j-hui/fidget.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
	use 'nvim-lualine/lualine.nvim'
	use 'numToStr/Comment.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
})
end)

